.class public abstract Landroid/hardware/hdmi/HdmiRecordListener;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onClearTimerRecordingResult(II)V
    .locals 0
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 248
    return-void
.end method

.method public onOneTouchRecordResult(II)V
    .locals 0
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 52
    return-void
.end method

.method public abstract onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.end method

.method public onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V
    .locals 0
    .param p1, "recorderAddress"    # I
    .param p2, "data"    # Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    #@0
    .prologue
    .line 62
    return-void
.end method
