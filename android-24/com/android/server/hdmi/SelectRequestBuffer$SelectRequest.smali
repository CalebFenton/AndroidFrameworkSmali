.class public abstract Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
.super Ljava/lang/Object;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/SelectRequestBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectRequest"
.end annotation


# instance fields
.field protected final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field protected final mId:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "id"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    .line 51
    iput p2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mId:I

    #@7
    .line 52
    iput-object p3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@9
    .line 49
    return-void
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 71
    iget-object v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    #@6
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 68
    :cond_0
    :goto_0
    return-void

    #@a
    .line 73
    :catch_0
    move-exception v0

    #@b
    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SelectRequestBuffer"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Invoking callback failed:"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method


# virtual methods
.method protected isLocalDeviceReady()Z
    .locals 2

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 61
    const-string/jumbo v0, "SelectRequestBuffer"

    #@9
    const-string/jumbo v1, "Local tv device not available"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 62
    const/4 v0, 0x2

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->invokeCallback(I)V

    #@13
    .line 63
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 65
    :cond_0
    const/4 v0, 0x1

    #@16
    return v0
.end method

.method public abstract process()V
.end method

.method protected tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
