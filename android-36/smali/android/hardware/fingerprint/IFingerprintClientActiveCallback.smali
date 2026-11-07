.class public interface abstract Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
.super Ljava/lang/Object;
.source "IFingerprintClientActiveCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;,
        Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onClientActiveChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
