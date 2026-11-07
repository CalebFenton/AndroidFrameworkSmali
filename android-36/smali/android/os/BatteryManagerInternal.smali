.class public abstract Landroid/os/BatteryManagerInternal;
.super Ljava/lang/Object;
.source "BatteryManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getBatteryChargeCounter()I
.end method

.method public abstract greylist-max-o getBatteryFullCharge()I
.end method

.method public abstract blacklist getBatteryHealth()I
.end method

.method public abstract greylist-max-o getBatteryLevel()I
.end method

.method public abstract greylist-max-o getBatteryLevelLow()Z
.end method

.method public abstract blacklist getChargingPolicy()I
.end method

.method public abstract greylist-max-o getInvalidCharger()I
.end method

.method public abstract greylist-max-o getPlugType()I
.end method

.method public abstract greylist-max-o isPowered(I)Z
.end method

.method public abstract blacklist registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V
.end method

.method public abstract blacklist resetBattery(Z)V
.end method

.method public abstract blacklist setBatteryLevel(IZ)V
.end method

.method public abstract blacklist setChargerAcOnline(ZZ)V
.end method

.method public abstract blacklist suspendBatteryInput()V
.end method

.method public abstract blacklist unplugBattery(Z)V
.end method
