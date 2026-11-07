.class public final synthetic Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/hardware/input/IInputDeviceBatteryState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/input/IInputDeviceBatteryState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-static {v0, v1}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->$r8$lambda$EFmjYNCJERYjTSX75R9ktl_HLAc(Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;Landroid/hardware/input/IInputDeviceBatteryState;)V

    return-void
.end method
