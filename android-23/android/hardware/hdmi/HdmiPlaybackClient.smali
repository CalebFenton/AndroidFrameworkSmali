.class public final Landroid/hardware/hdmi/HdmiPlaybackClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiPlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;,
        Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;
    }
.end annotation


# static fields
.field private static final ADDR_TV:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiPlaybackClient"


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    #@3
    .line 70
    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$2;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    #@5
    return-object v0
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    #@0
    .prologue
    .line 121
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$1;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getDeviceType()I
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    #@0
    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 81
    :goto_0
    return-void

    #@a
    .line 85
    :catch_0
    move-exception v0

    #@b
    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiPlaybackClient"

    #@e
    const-string/jumbo v2, "oneTouchPlay threw exception "

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    #@0
    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 101
    :goto_0
    return-void

    #@a
    .line 104
    :catch_0
    move-exception v0

    #@b
    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiPlaybackClient"

    #@e
    const-string/jumbo v2, "queryDisplayStatus threw exception "

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public sendStandby()V
    .locals 4

    #@0
    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getDeviceType()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    #@a
    move-result v3

    #@b
    invoke-interface {v1, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 112
    :goto_0
    return-void

    #@f
    .line 115
    :catch_0
    move-exception v0

    #@10
    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiPlaybackClient"

    #@13
    const-string/jumbo v2, "sendStandby threw exception "

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method
