.class public final Landroid/hardware/input/VirtualTouchscreenConfig$Builder;
.super Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
.source "VirtualTouchscreenConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchscreenConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualTouchscreenConfig$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "touchscreenWidth"    # I
    .param p2, "touchscreenHeight"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;-><init>(II)V

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualTouchscreenConfig;
    .registers 3

    .line 90
    new-instance v0, Landroid/hardware/input/VirtualTouchscreenConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualTouchscreenConfig;-><init>(Landroid/hardware/input/VirtualTouchscreenConfig$Builder;Landroid/hardware/input/VirtualTouchscreenConfig-IA;)V

    return-object v0
.end method
