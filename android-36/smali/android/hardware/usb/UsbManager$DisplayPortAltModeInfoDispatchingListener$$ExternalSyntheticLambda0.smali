.class public final synthetic Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/hardware/usb/DisplayPortAltModeInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

    iput-object p2, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-static {v0, v1, v2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->lambda$onDisplayPortAltModeInfoChanged$0(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method
