.class public final Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualRotaryEncoderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualRotaryEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualRotaryEncoderConfig;
    .registers 3

    .line 78
    new-instance v0, Landroid/hardware/input/VirtualRotaryEncoderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;-><init>(Landroid/hardware/input/VirtualRotaryEncoderConfig$Builder;Landroid/hardware/input/VirtualRotaryEncoderConfig-IA;)V

    return-object v0
.end method
