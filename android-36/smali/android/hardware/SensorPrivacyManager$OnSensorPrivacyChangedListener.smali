.class public interface abstract Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSensorPrivacyChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;
    }
.end annotation


# virtual methods
.method public abstract whitelist onSensorPrivacyChanged(IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    .line 259
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->-$$Nest$fgetmSensor(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->-$$Nest$fgetmEnabled(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(IZ)V

    .line 260
    return-void
.end method
