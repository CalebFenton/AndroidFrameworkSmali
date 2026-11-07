.class public interface abstract Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;
.super Ljava/lang/Object;
.source "IThermal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/V1_0/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getCoolingDevicesCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/thermal/V1_0/ThermalStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/thermal/V1_0/CoolingDevice;",
            ">;)V"
        }
    .end annotation
.end method
