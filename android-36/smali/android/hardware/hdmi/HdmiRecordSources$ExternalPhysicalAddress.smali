.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPhysicalAddress"
.end annotation


# static fields
.field static final greylist-max-o EXTRA_DATA_SIZE:I = 0x2


# instance fields
.field private final greylist-max-o mPhysicalAddress:I


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "physicalAddress"    # I

    .line 727
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 728
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    .line 729
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/hdmi/HdmiRecordSources-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(I)V

    return-void
.end method


# virtual methods
.method greylist-max-o extraParamToByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 733
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-$$Nest$smshortToByteArray(S[BI)I

    .line 734
    const/4 v0, 0x2

    return v0
.end method
