.class public final synthetic Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/hardware/devicestate/DeviceState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/devicestate/DeviceState;

    invoke-static {v0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->$r8$lambda$lkP9XsfDo1r80vGuiV1BUMRMAH8(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method
