.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
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
    name = "DigitalServiceSource"
.end annotation


# static fields
.field private static final greylist-max-o DIGITAL_SERVICE_IDENTIFIED_BY_CHANNEL:I = 0x1

.field private static final greylist-max-o DIGITAL_SERVICE_IDENTIFIED_BY_DIGITAL_ID:I = 0x0

.field static final greylist-max-o EXTRA_DATA_SIZE:I = 0x7


# instance fields
.field private final greylist-max-o mBroadcastSystem:I

.field private final greylist-max-o mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

.field private final greylist-max-o mIdentificationMethod:I


# direct methods
.method private constructor greylist-max-o <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V
    .registers 6
    .param p1, "identificatinoMethod"    # I
    .param p2, "broadcastSystem"    # I
    .param p3, "identification"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    .line 521
    const/4 v0, 0x2

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 522
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    .line 523
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    .line 524
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    .line 525
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V

    return-void
.end method


# virtual methods
.method greylist-max-o extraParamToByteArray([BI)I
    .registers 6
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 529
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    const/4 v1, 0x7

    shl-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 530
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;->toByteArray([BI)I

    .line 531
    return v1
.end method
