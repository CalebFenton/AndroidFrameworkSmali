.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayOffloadSession"
.end annotation


# direct methods
.method public static blacklist isSupportedOffloadState(I)Z
    .registers 2
    .param p0, "displayState"    # I

    .line 919
    invoke-static {p0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract blacklist allowAutoBrightnessInDoze()Z
.end method

.method public abstract blacklist blockScreenOn(Ljava/lang/Runnable;)Z
.end method

.method public abstract blacklist cancelBlockScreenOn()V
.end method

.method public abstract blacklist getAutoBrightnessLevels(I)[F
.end method

.method public abstract blacklist getAutoBrightnessLuxLevels(I)[F
.end method

.method public abstract blacklist getBrightness()F
.end method

.method public abstract blacklist getDozeBrightness()F
.end method

.method public abstract blacklist isActive()Z
.end method

.method public abstract blacklist setDozeStateOverride(I)V
.end method

.method public abstract blacklist updateBrightness(F)V
.end method
