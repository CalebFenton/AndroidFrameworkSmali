.class public final Landroid/hardware/hdmi/HdmiTvClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiTvClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;,
        Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;,
        Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiTvClient"

.field public static final whitelist VENDOR_DATA_SIZE:I = 0x10


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 48
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 49
    return-void
.end method

.method private greylist-max-o checkTimerRecordingSourceType(I)V
    .registers 5
    .param p1, "sourceType"    # I

    .line 357
    packed-switch p1, :pswitch_data_1e

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_1c
    nop

    .line 365
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method static greylist-max-o create(Landroid/hardware/hdmi/IHdmiControlService;)Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2
    .param p0, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 54
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method private static greylist-max-o getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 2
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .line 96
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$1;-><init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V

    return-object v0
.end method

.method private static greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 2
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    .line 151
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$2;-><init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V

    return-object v0
.end method

.method private greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    .line 411
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiTvClient$4;-><init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V

    return-object v0
.end method

.method private static greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .registers 2
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiRecordListener;

    .line 249
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$3;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$3;-><init>(Landroid/hardware/hdmi/HdmiRecordListener;)V

    return-object v0
.end method


# virtual methods
.method public whitelist clearTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 372
    if-eqz p3, :cond_1e

    .line 376
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 378
    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    .line 379
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 380
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->clearTimerRecording(II[B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_15

    .line 383
    .end local v0    # "data":[B
    goto :goto_1d

    .line 381
    :catch_15
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void

    .line 373
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deviceSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6
    .param p1, "logicalAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    if-eqz p2, :cond_15

    .line 89
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 92
    goto :goto_14

    .line 90
    :catch_c
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 86
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeviceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "Failed to call getDeviceList():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist portSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .line 112
    if-eqz p2, :cond_15

    .line 116
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 119
    goto :goto_14

    .line 117
    :catch_c
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select port: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 113
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMhlVendorCommand(III[B)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .line 429
    if-eqz p4, :cond_52

    array-length v0, p4

    const/16 v1, 0x10

    if-ne v0, v1, :cond_52

    .line 432
    if-ltz p2, :cond_39

    if-ge p2, v1, :cond_39

    .line 435
    if-ltz p3, :cond_20

    add-int v0, p2, p3

    if-gt v0, v1, :cond_20

    .line 440
    :try_start_11
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->sendMhlVendorCommand(III[B)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 443
    goto :goto_1f

    .line 441
    :catch_17
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 436
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid vendor command data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendStandby(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTvClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 245
    goto :goto_12

    .line 243
    :catch_a
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "sendStandby threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    .line 399
    if-eqz p1, :cond_15

    .line 403
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 406
    goto :goto_14

    .line 404
    :catch_c
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set hdmi mhl vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 400
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInputChangeListener(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    .line 140
    if-eqz p1, :cond_15

    .line 144
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 147
    goto :goto_14

    .line 145
    :catch_c
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "Failed to set InputChangeListener:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 141
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRecordListener(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiRecordListener;

    .line 225
    if-eqz p1, :cond_15

    .line 229
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 232
    goto :goto_14

    .line 230
    :catch_c
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set record listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 226
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 188
    goto :goto_12

    .line 186
    :catch_a
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set system audio mode:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist setSystemAudioMute(Z)V
    .registers 5
    .param p1, "mute"    # Z

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 216
    goto :goto_e

    .line 214
    :catch_6
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set mute: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist setSystemAudioVolume(III)V
    .registers 7
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioVolume(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 203
    goto :goto_e

    .line 201
    :catch_6
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set volume: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist startOneTouchRecord(ILandroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 6
    .param p1, "recorderAddress"    # I
    .param p2, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 292
    if-eqz p2, :cond_1c

    .line 297
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p2, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    new-array v1, v1, [B

    .line 298
    .local v1, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 299
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->startOneTouchRecord(I[B)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_13

    .line 302
    .end local v1    # "data":[B
    goto :goto_1b

    .line 300
    :catch_13
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void

    .line 293
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .line 341
    if-eqz p3, :cond_1e

    .line 345
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 348
    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    .line 349
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 350
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startTimerRecording(II[B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_15

    .line 353
    .end local v0    # "data":[B
    goto :goto_1d

    .line 351
    :catch_15
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void

    .line 342
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopOneTouchRecord(I)V
    .registers 5
    .param p1, "recorderAddress"    # I

    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->stopOneTouchRecord(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 315
    goto :goto_e

    .line 313
    :catch_6
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to stop record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
