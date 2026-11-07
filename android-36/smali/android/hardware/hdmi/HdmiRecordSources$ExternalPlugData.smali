.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
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
    name = "ExternalPlugData"
.end annotation


# static fields
.field static final greylist-max-o EXTRA_DATA_SIZE:I = 0x1


# instance fields
.field private final greylist-max-o mPlugNumber:I


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "plugNumber"    # I

    .line 683
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 684
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    .line 685
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/hdmi/HdmiRecordSources-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(I)V

    return-void
.end method


# virtual methods
.method greylist-max-o extraParamToByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 689
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 690
    const/4 v0, 0x1

    return v0
.end method
