.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardwareWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;,
        Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Default;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract greylist-max-o onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
