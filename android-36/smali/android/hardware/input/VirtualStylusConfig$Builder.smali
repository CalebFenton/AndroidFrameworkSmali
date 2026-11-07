.class public final Landroid/hardware/input/VirtualStylusConfig$Builder;
.super Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
.source "VirtualStylusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualStylusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualStylusConfig$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;-><init>(II)V

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualStylusConfig;
    .registers 3

    .line 91
    new-instance v0, Landroid/hardware/input/VirtualStylusConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualStylusConfig;-><init>(Landroid/hardware/input/VirtualStylusConfig$Builder;Landroid/hardware/input/VirtualStylusConfig-IA;)V

    return-object v0
.end method
