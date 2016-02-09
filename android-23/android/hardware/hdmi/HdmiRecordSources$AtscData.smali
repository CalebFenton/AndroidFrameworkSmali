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
.field private final mProgramNumber:I

.field private final mTransportStreamId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "transportStreamId"    # I
    .param p2, "programNumber"    # I

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 222
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    #@5
    .line 223
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    #@7
    .line 221
    return-void
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 228
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mTransportStreamId:I

    #@2
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AtscData;->mProgramNumber:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->-wrap1(III[BI)I

    #@8
    move-result v0

    #@9
    return v0
.end method
