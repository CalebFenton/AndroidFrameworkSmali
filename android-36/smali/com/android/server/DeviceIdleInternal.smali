.class public interface abstract Lcom/android/server/DeviceIdleInternal;
.super Ljava/lang/Object;
.source "DeviceIdleInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleInternal$StationaryListener;
    }
.end annotation


# virtual methods
.method public abstract blacklist addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V
.end method

.method public abstract blacklist addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
.end method

.method public abstract blacklist addPowerSaveTempWhitelistAppDirect(IJIZILjava/lang/String;I)V
.end method

.method public abstract blacklist exitIdle(Ljava/lang/String;)V
.end method

.method public abstract blacklist getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
.end method

.method public abstract blacklist getNotificationAllowlistDuration()J
.end method

.method public abstract blacklist getPowerSaveTempWhitelistAppIds()[I
.end method

.method public abstract blacklist getPowerSaveWhitelistUserAppIds()[I
.end method

.method public abstract blacklist getTempAllowListType(II)I
.end method

.method public abstract blacklist isAppOnWhitelist(I)Z
.end method

.method public abstract blacklist onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
.end method

.method public abstract blacklist registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
.end method

.method public abstract blacklist registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method

.method public abstract blacklist setAlarmsActive(Z)V
.end method

.method public abstract blacklist setJobsActive(Z)V
.end method

.method public abstract blacklist unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
.end method

.method public abstract blacklist unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method
