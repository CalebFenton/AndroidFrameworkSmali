.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiClient"

.field private static final blacklist UNKNOWN_VENDOR_ID:I = 0xffffff


# instance fields
.field private greylist-max-o mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final greylist-max-o mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 34
    return-void
.end method

.method private static blacklist getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 4
    .param p0, "logicalAddress"    # I
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    .line 84
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;I)V

    return-object v0
.end method

.method private static greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 2
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    .line 197
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 103
    :catch_7
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o getDeviceType()I
.end method

.method public whitelist selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V
    .registers 7
    .param p1, "logicalAddress"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    .line 65
    if-eqz p3, :cond_1f

    .line 68
    if-eqz p2, :cond_17

    .line 72
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 73
    invoke-static {p1, p2, p3}, Landroid/hardware/hdmi/HdmiClient;->getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    .line 72
    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 76
    goto :goto_16

    .line 74
    :catch_e
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void

    .line 69
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendKeyEvent(IZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 120
    goto :goto_12

    .line 118
    :catch_a
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "sendKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist sendVendorCommand(I[BZ)V
    .registers 7
    .param p1, "targetAddress"    # I
    .param p2, "params"    # [B
    .param p3, "hasVendorId"    # Z

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 157
    goto :goto_12

    .line 155
    :catch_a
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendVolumeKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 139
    nop

    .line 140
    return-void

    .line 136
    :catch_b
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "sendVolumeKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    .line 169
    const v0, 0xffffff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/hdmi/HdmiClient;->setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V

    .line 170
    return-void
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;
    .param p2, "vendorId"    # I

    .line 180
    if-eqz p1, :cond_23

    .line 183
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-nez v0, :cond_1b

    .line 187
    :try_start_6
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v0

    .line 188
    .local v0, "wrappedListener":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0, p2}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 189
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 192
    .end local v0    # "wrappedListener":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    goto :goto_1a

    .line 190
    :catch_12
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "failed to set vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void

    .line 184
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
