.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayOffloader"
.end annotation


# virtual methods
.method public abstract blacklist allowAutoBrightnessInDoze()Z
.end method

.method public abstract blacklist cancelBlockScreenOn()V
.end method

.method public abstract blacklist onBlockingScreenOn(Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist startOffload()Z
.end method

.method public abstract blacklist stopOffload()V
.end method
