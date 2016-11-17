.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiClient"


# instance fields
.field private mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@5
    .line 25
    return-void
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    #@0
    .prologue
    .line 98
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    #@2
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    #@0
    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 38
    :catch_0
    move-exception v0

    #@8
    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiClient"

    #@b
    const-string/jumbo v2, "getActiveSource threw exception "

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 41
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method abstract getDeviceType()I
.end method

.method public sendKeyEvent(IZ)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    #@0
    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 50
    :goto_0
    return-void

    #@a
    .line 53
    :catch_0
    move-exception v0

    #@b
    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiClient"

    #@e
    const-string/jumbo v2, "sendKeyEvent threw exception "

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public sendVendorCommand(I[BZ)V
    .locals 3
    .param p1, "targetAddress"    # I
    .param p2, "params"    # [B
    .param p3, "hasVendorId"    # Z

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 67
    :goto_0
    return-void

    #@a
    .line 70
    :catch_0
    move-exception v0

    #@b
    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiClient"

    #@e
    const-string/jumbo v2, "failed to send vendor command: "

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    #@0
    .prologue
    .line 81
    if-nez p1, :cond_0

    #@2
    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "listener cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 84
    :cond_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 85
    new-instance v2, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v3, "listener was already set"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 88
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@1b
    move-result-object v1

    #@1c
    .line 89
    .local v1, "wrappedListener":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    #@1e
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    #@21
    move-result v3

    #@22
    invoke-interface {v2, v1, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    #@25
    .line 90
    iput-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 80
    .end local v1    # "wrappedListener":Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :goto_0
    return-void

    #@28
    .line 91
    :catch_0
    move-exception v0

    #@29
    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiClient"

    #@2c
    const-string/jumbo v3, "failed to set vendor command listener: "

    #@2f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_0
.end method
