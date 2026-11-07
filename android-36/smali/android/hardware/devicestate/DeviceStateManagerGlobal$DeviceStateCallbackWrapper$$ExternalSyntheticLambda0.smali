.class public final synthetic Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->$r8$lambda$rNeGZVrXgPifV17TWzWudk3z49U(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
