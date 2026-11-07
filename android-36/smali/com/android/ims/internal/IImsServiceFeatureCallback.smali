.class public interface abstract Lcom/android/ims/internal/IImsServiceFeatureCallback;
.super Ljava/lang/Object;
.source "IImsServiceFeatureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;,
        Lcom/android/ims/internal/IImsServiceFeatureCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist imsFeatureRemoved(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist imsStatusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateCapabilities(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
