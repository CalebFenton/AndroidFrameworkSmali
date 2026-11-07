.class public interface abstract Landroid/location/ICountryDetector;
.super Ljava/lang/Object;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ICountryDetector$Stub;,
        Landroid/location/ICountryDetector$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o addCountryListener(Landroid/location/ICountryListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o detectCountry()Landroid/location/Country;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeCountryListener(Landroid/location/ICountryListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
