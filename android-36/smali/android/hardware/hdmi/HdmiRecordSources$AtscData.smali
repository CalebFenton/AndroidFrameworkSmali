.class public final Landroid/hardware/hdmi/HdmiRecordSources$AtscData;
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
    name = "AtscData"
.end annotation


# instance fields
.field private final greylist-max-o mProgramNumber:I

.field private final greylist-max-o mTransportStreamId:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "transportStreamId"    # I
    .param p2, "programNumber"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    .line 223
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    .line 224
    return-void
.end method


# virtual methods
.method public greylist-max-o toByteArray([BI)I
    .registers 6
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 228
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-$$Nest$smthreeFieldsToSixBytes(III[BI)I

    move-result v0

    return v0
.end method
