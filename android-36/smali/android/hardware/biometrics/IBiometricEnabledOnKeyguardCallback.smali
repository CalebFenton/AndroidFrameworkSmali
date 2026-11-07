.class public interface abstract Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "IBiometricEnabledOnKeyguardCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;,
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback"


# virtual methods
.method public abstract blacklist onChanged(ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
