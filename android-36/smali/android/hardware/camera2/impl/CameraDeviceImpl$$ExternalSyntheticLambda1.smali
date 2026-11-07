.class public final synthetic Landroid/hardware/camera2/impl/CameraDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->$r8$lambda$xo_9-sEzfUo5YLY0z2ZXoA7vub8(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)V

    return-void
.end method
