.class public final synthetic Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

.field public final synthetic blacklist f$1:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;->f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;->f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/usb/UsbDevice;

    check-cast p1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->$r8$lambda$se_al-kR4RiGxEP4kgmHPxOw1AE(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method
