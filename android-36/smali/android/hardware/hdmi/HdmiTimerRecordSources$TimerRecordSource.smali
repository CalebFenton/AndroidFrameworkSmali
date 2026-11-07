.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerRecordSource"
.end annotation


# instance fields
.field private final greylist-max-o mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

.field private final greylist-max-o mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 3
    .param p1, "timerInfo"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
    .param p2, "recordSource"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    .line 386
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 387
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    return-void
.end method


# virtual methods
.method greylist-max-o getDataSize()I
    .registers 4

    .line 390
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->getDataSize()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o toByteArray([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .line 396
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->toByteArray([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 398
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 399
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v0

    return v0
.end method
