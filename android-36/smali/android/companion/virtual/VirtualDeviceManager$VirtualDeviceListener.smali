.class public interface abstract Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VirtualDeviceListener"
.end annotation


# virtual methods
.method public whitelist onVirtualDeviceClosed(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1344
    return-void
.end method

.method public whitelist onVirtualDeviceCreated(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1337
    return-void
.end method
