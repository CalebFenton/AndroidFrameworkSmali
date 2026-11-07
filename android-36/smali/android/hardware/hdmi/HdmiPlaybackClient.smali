.class public final Landroid/hardware/hdmi/HdmiPlaybackClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiPlaybackClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;,
        Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o ADDR_TV:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiPlaybackClient"


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 72
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 73
    return-void
.end method

.method private greylist-max-o getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 4
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .line 137
    if-eqz p1, :cond_8

    .line 140
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$2;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    return-object v0

    .line 138
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DisplayStatusCallback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 4
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .line 125
    if-eqz p1, :cond_8

    .line 128
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$1;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    return-object v0

    .line 126
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OneTouchPlayCallback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDeviceType()I
    .registers 2

    .line 96
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 91
    goto :goto_12

    .line 89
    :catch_a
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string v2, "oneTouchPlay threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 110
    goto :goto_12

    .line 108
    :catch_a
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string v2, "queryDisplayStatus threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist sendStandby()V
    .registers 4

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getDeviceType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 121
    goto :goto_17

    .line 119
    :catch_f
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string v2, "sendStandby threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method
