.class Landroid/app/SystemServiceRegistry$11;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/hardware/hdmi/HdmiControlManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 414
    const-string/jumbo v0, "hdmi_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 415
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-static {v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/hdmi/HdmiControlManager;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$11;->createService()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    return-object v0
.end method
