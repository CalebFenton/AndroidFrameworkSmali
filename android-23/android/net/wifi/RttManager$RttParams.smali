.class public Landroid/net/wifi/RttManager$RttParams;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttParams"
.end annotation


# instance fields
.field public LCIRequest:Z

.field public LCRRequest:Z

.field public bandwidth:I

.field public bssid:Ljava/lang/String;

.field public burstTimeout:I

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public deviceType:I

.field public frequency:I

.field public interval:I

.field public numRetriesPerFTMR:I

.field public numRetriesPerMeasurementFrame:I

.field public numSamplesPerBurst:I

.field public num_retries:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public num_samples:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public numberBurst:I

.field public preamble:I

.field public requestType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 438
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@7
    .line 439
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@9
    .line 440
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@b
    .line 441
    const/16 v0, 0x8

    #@d
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@f
    .line 442
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@11
    .line 443
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@13
    .line 444
    const/16 v0, 0xf

    #@15
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@17
    .line 445
    const/4 v0, 0x2

    #@18
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@1a
    .line 446
    const/4 v0, 0x4

    #@1b
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@1d
    .line 436
    return-void
.end method
