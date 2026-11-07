.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayPowerCallbacks"
.end annotation


# virtual methods
.method public abstract blacklist acquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method public abstract blacklist onDisplayStateChange(ZZ)V
.end method

.method public abstract greylist-max-o onProximityNegative()V
.end method

.method public abstract greylist-max-o onProximityPositive()V
.end method

.method public abstract greylist-max-o onStateChanged()V
.end method

.method public abstract blacklist releaseSuspendBlocker(Ljava/lang/String;)V
.end method
