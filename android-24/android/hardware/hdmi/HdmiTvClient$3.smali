.class final Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 0
    .param p1, "val$callback"    # Landroid/hardware/hdmi/HdmiRecordListener;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    #@2
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getOneTouchRecordSource(I)[B
    .locals 4
    .param p1, "recorderAddress"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 247
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    #@3
    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    #@6
    move-result-object v1

    #@7
    .line 248
    .local v1, "source":Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
    if-nez v1, :cond_0

    #@9
    .line 249
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    #@b
    return-object v2

    #@c
    .line 251
    :cond_0
    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    #@f
    move-result v2

    #@10
    new-array v0, v2, [B

    #@12
    .line 252
    .local v0, "data":[B
    const/4 v2, 0x0

    #@13
    invoke-virtual {v1, v3, v0, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    #@16
    .line 253
    return-object v0
.end method

.method public onClearTimerRecordingResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(II)V

    #@5
    .line 268
    return-void
.end method

.method public onOneTouchRecordResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(II)V

    #@5
    .line 257
    return-void
.end method

.method public onTimerRecordingResult(II)V
    .locals 2
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    #@2
    .line 264
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    #@5
    move-result-object v1

    #@6
    .line 263
    invoke-virtual {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    #@9
    .line 262
    return-void
.end method
