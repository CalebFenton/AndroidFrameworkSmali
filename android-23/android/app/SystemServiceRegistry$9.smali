.class final Landroid/app/SystemServiceRegistry$9;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/hardware/hdmi/HdmiControlManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 3

    #@0
    .prologue
    .line 205
    const-string/jumbo v1, "hdmi_control"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 206
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/hdmi/HdmiControlManager;

    #@9
    invoke-static {v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroid/hardware/hdmi/HdmiControlManager;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    #@10
    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$9;->createService()Landroid/hardware/hdmi/HdmiControlManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
