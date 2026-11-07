.class public final synthetic Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    iput-object p2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    iget-object v1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->$r8$lambda$KHcEJn3pcti7FkPq9fG-Dv1PLh8(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/bluetooth/BluetoothDevice;Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    return-void
.end method
