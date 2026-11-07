.class public interface abstract Landroid/location/IGnssMeasurementsListener;
.super Ljava/lang/Object;
.source "IGnssMeasurementsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssMeasurementsListener$Stub;,
        Landroid/location/IGnssMeasurementsListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
