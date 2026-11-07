.class public interface abstract Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;
.super Ljava/lang/Object;
.source "ISatelliteCapabilitiesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteCapabilitiesCallback"


# virtual methods
.method public abstract blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
