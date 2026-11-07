.class public interface abstract Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
.super Ljava/lang/Object;
.source "IBiometricServiceLockoutResetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;,
        Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricServiceLockoutResetCallback"


# virtual methods
.method public abstract blacklist onLockoutReset(ILandroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
