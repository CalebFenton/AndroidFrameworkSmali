.class public abstract Landroid/hardware/SensorPrivacyManagerInternal;
.super Ljava/lang/Object;
.source "SensorPrivacyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;)V
.end method

.method public abstract blacklist addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V
.end method

.method public abstract blacklist isSensorPrivacyEnabled(II)Z
.end method

.method public abstract blacklist setPhysicalToggleSensorPrivacy(IIZ)V
.end method
