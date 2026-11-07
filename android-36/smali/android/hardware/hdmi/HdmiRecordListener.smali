.class public abstract Landroid/hardware/hdmi/HdmiRecordListener;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClearTimerRecordingResult(II)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 249
    return-void
.end method

.method public whitelist onOneTouchRecordResult(II)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 53
    return-void
.end method

.method public abstract whitelist onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.end method

.method public whitelist onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "data"    # Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    .line 63
    return-void
.end method
