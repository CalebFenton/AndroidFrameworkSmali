.class public interface abstract Landroid/hardware/devicestate/DeviceStateRequest$Callback;
.super Ljava/lang/Object;
.source "DeviceStateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;

    .line 121
    return-void
.end method

.method public blacklist onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;

    .line 142
    return-void
.end method

.method public blacklist onRequestSuspended(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;

    .line 129
    return-void
.end method
