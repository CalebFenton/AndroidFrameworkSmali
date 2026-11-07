.class public final Landroid/hardware/hdmi/HdmiAudioSystemClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiAudioSystemClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;
    }
.end annotation


# static fields
.field private static final blacklist REPORT_AUDIO_STATUS_INTERVAL_MS:I = 0x1f4

.field private static final blacklist TAG:Ljava/lang/String; = "HdmiAudioSystemClient"


# instance fields
.field private blacklist mCanSendAudioStatus:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastIsMute:Z

.field private blacklist mLastMaxVolume:I

.field private blacklist mLastVolume:I

.field private blacklist mPendingReportAudioStatus:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastIsMute(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastMaxVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastVolume(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCanSendAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingReportAudioStatus(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 3
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V
    .registers 5
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 57
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    .line 58
    if-nez p2, :cond_12

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_13

    :cond_12
    move-object v0, p2

    :goto_13
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist getDeviceType()I
    .registers 2

    .line 78
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist sendReportAudioStatusCecCommand(ZIIZ)V
    .registers 9
    .param p1, "isMuteAdjust"    # Z
    .param p2, "volume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "isMute"    # Z

    .line 91
    if-eqz p1, :cond_e

    .line 94
    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 97
    goto :goto_d

    .line 95
    :catch_c
    move-exception v0

    .line 98
    :goto_d
    return-void

    .line 101
    :cond_e
    iput p2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    .line 102
    iput p3, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    .line 103
    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    .line 104
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    if-eqz v0, :cond_33

    .line 106
    :try_start_18
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    .line 108
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;-><init>(Landroid/hardware/hdmi/HdmiAudioSystemClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_31

    goto :goto_32

    .line 127
    :catch_31
    move-exception v0

    .line 129
    :goto_32
    goto :goto_36

    .line 132
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    .line 134
    :goto_36
    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;)V
    .registers 3
    .param p1, "state"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;

    .line 146
    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .registers 4

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioModeOnForAudioOnlySource()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 161
    goto :goto_e

    .line 159
    :catch_6
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiAudioSystemClient"

    const-string v2, "Failed to set System Audio Mode on for Audio Only source"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
