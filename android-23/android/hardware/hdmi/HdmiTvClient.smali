.class public final Landroid/hardware/hdmi/HdmiTvClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;,
        Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;,
        Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiTvClient"

.field public static final VENDOR_DATA_SIZE:I = 0x10


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    #@3
    .line 46
    return-void
.end method

.method private checkTimerRecordingSourceType(I)V
    .locals 3
    .param p1, "sourceType"    # I

    #@0
    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    #@3
    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid source type:"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 350
    :pswitch_0
    return-void

    #@1e
    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static create(Landroid/hardware/hdmi/IHdmiControlService;)Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1
    .param p0, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    #@0
    .prologue
    .line 53
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    #@5
    return-object v0
.end method

.method private static getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    #@0
    .prologue
    .line 92
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$1;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$1;-><init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V

    #@5
    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .locals 1
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    #@0
    .prologue
    .line 147
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$2;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$2;-><init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V

    #@5
    return-object v0
.end method

.method private getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    #@0
    .prologue
    .line 405
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$4;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiTvClient$4;-><init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V

    #@5
    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .locals 1
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiRecordListener;

    #@0
    .prologue
    .line 243
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$3;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$3;-><init>(Landroid/hardware/hdmi/HdmiRecordListener;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clearTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@0
    .prologue
    .line 366
    if-nez p3, :cond_0

    #@2
    .line 367
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "source must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 370
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    #@e
    .line 372
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    #@11
    move-result v2

    #@12
    new-array v0, v2, [B

    #@14
    .line 373
    .local v0, "data":[B
    const/4 v2, 0x0

    #@15
    invoke-virtual {p3, v0, v2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    #@18
    .line 374
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@1a
    invoke-interface {v2, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->clearTimerRecording(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 365
    .end local v0    # "data":[B
    :goto_0
    return-void

    #@1e
    .line 375
    :catch_0
    move-exception v1

    #@1f
    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiTvClient"

    #@22
    const-string/jumbo v3, "failed to start record: "

    #@25
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 3
    .param p1, "logicalAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    #@0
    .prologue
    .line 81
    if-nez p2, :cond_0

    #@2
    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "callback must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@d
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, p1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 80
    :goto_0
    return-void

    #@15
    .line 86
    :catch_0
    move-exception v0

    #@16
    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@19
    const-string/jumbo v2, "failed to select device: "

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 164
    :catch_0
    move-exception v0

    #@8
    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TAG"

    #@b
    const-string/jumbo v2, "Failed to call getDeviceList():"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getDeviceType()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public portSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 3
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    #@0
    .prologue
    .line 108
    if-nez p2, :cond_0

    #@2
    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Callback must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 112
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@d
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, p1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 107
    :goto_0
    return-void

    #@15
    .line 113
    :catch_0
    move-exception v0

    #@16
    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@19
    const-string/jumbo v2, "failed to select port: "

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public sendMhlVendorCommand(III[B)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 423
    if-eqz p4, :cond_0

    #@4
    array-length v1, p4

    #@5
    if-eq v1, v2, :cond_1

    #@7
    .line 424
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "Invalid vendor command data."

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 426
    :cond_1
    if-ltz p2, :cond_2

    #@12
    if-lt p2, v2, :cond_3

    #@14
    .line 427
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Invalid offset:"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 429
    :cond_3
    if-ltz p3, :cond_4

    #@30
    add-int v1, p2, p3

    #@32
    if-le v1, v2, :cond_5

    #@34
    .line 430
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Invalid length:"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    .line 434
    :cond_5
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@50
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->sendMhlVendorCommand(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 422
    :goto_0
    return-void

    #@54
    .line 435
    :catch_0
    move-exception v0

    #@55
    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@58
    const-string/jumbo v2, "failed to send vendor command: "

    #@5b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    goto :goto_0
.end method

.method public sendStandby(I)V
    .locals 3
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTvClient;->getDeviceType()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2, p1}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 234
    :goto_0
    return-void

    #@a
    .line 237
    :catch_0
    move-exception v0

    #@b
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@e
    const-string/jumbo v2, "sendStandby threw exception "

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public setHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    #@0
    .prologue
    .line 393
    if-nez p1, :cond_0

    #@2
    .line 394
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 397
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@d
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 392
    :goto_0
    return-void

    #@15
    .line 398
    :catch_0
    move-exception v0

    #@16
    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@19
    const-string/jumbo v2, "failed to set hdmi mhl vendor command listener: "

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    #@0
    .prologue
    .line 136
    if-nez p1, :cond_0

    #@2
    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@d
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 135
    :goto_0
    return-void

    #@15
    .line 141
    :catch_0
    move-exception v0

    #@16
    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TAG"

    #@19
    const-string/jumbo v2, "Failed to set InputChangeListener:"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public setRecordListener(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiRecordListener;

    #@0
    .prologue
    .line 219
    if-nez p1, :cond_0

    #@2
    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "listener must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 223
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@d
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 218
    :goto_0
    return-void

    #@15
    .line 224
    :catch_0
    move-exception v0

    #@16
    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@19
    const-string/jumbo v2, "failed to set record listener."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    #@0
    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 177
    :goto_0
    return-void

    #@a
    .line 180
    :catch_0
    move-exception v0

    #@b
    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@e
    const-string/jumbo v2, "failed to set system audio mode:"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public setSystemAudioMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 205
    :goto_0
    return-void

    #@6
    .line 208
    :catch_0
    move-exception v0

    #@7
    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@a
    const-string/jumbo v2, "failed to set mute: "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setSystemAudioVolume(III)V
    .locals 3
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    #@0
    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 192
    :goto_0
    return-void

    #@6
    .line 195
    :catch_0
    move-exception v0

    #@7
    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@a
    const-string/jumbo v2, "failed to set volume: "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public startOneTouchRecord(ILandroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    #@0
    .prologue
    .line 286
    if-nez p2, :cond_0

    #@2
    .line 287
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "source must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 291
    :cond_0
    const/4 v2, 0x1

    #@c
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    #@f
    move-result v2

    #@10
    new-array v0, v2, [B

    #@12
    .line 292
    .local v0, "data":[B
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {p2, v2, v0, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    #@17
    .line 293
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@19
    invoke-interface {v2, p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startOneTouchRecord(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 285
    .end local v0    # "data":[B
    :goto_0
    return-void

    #@1d
    .line 294
    :catch_0
    move-exception v1

    #@1e
    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiTvClient"

    #@21
    const-string/jumbo v3, "failed to start record: "

    #@24
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method public startTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    #@0
    .prologue
    .line 335
    if-nez p3, :cond_0

    #@2
    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "source must not be null."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 339
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    #@e
    .line 342
    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    #@11
    move-result v2

    #@12
    new-array v0, v2, [B

    #@14
    .line 343
    .local v0, "data":[B
    const/4 v2, 0x0

    #@15
    invoke-virtual {p3, v0, v2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    #@18
    .line 344
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@1a
    invoke-interface {v2, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startTimerRecording(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 334
    .end local v0    # "data":[B
    :goto_0
    return-void

    #@1e
    .line 345
    :catch_0
    move-exception v1

    #@1f
    .line 346
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiTvClient"

    #@22
    const-string/jumbo v3, "failed to start record: "

    #@25
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    goto :goto_0
.end method

.method public stopOneTouchRecord(I)V
    .locals 3
    .param p1, "recorderAddress"    # I

    #@0
    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->stopOneTouchRecord(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 304
    :goto_0
    return-void

    #@6
    .line 307
    :catch_0
    move-exception v0

    #@7
    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiTvClient"

    #@a
    const-string/jumbo v2, "failed to stop record: "

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
