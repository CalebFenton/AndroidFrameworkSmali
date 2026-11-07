.class public interface abstract Landroid/hardware/display/NightDisplayListener$Callback;
.super Ljava/lang/Object;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/NightDisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 137
    return-void
.end method

.method public blacklist onAutoModeChanged(I)V
    .registers 2
    .param p1, "autoMode"    # I

    .line 145
    return-void
.end method

.method public blacklist onColorTemperatureChanged(I)V
    .registers 2
    .param p1, "colorTemperature"    # I

    .line 169
    return-void
.end method

.method public blacklist onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 161
    return-void
.end method

.method public blacklist onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 153
    return-void
.end method
