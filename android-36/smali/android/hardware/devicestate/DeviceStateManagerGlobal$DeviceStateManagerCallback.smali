.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;
.super Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceStateManagerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 378
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 379
    return-void
.end method

.method public blacklist onRequestActive(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 383
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleRequestActive(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V

    .line 384
    return-void
.end method

.method public blacklist onRequestCanceled(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 388
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleRequestCanceled(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V

    .line 389
    return-void
.end method
