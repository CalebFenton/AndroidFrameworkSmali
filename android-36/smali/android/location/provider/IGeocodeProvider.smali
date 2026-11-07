.class public interface abstract Landroid/location/provider/IGeocodeProvider;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IGeocodeProvider$Stub;,
        Landroid/location/provider/IGeocodeProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IGeocodeProvider"


# virtual methods
.method public abstract blacklist forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
