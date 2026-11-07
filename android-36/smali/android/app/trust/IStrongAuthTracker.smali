.class public interface abstract Landroid/app/trust/IStrongAuthTracker;
.super Ljava/lang/Object;
.source "IStrongAuthTracker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/IStrongAuthTracker$Stub;,
        Landroid/app/trust/IStrongAuthTracker$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onIsNonStrongBiometricAllowedChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStrongAuthRequiredChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
