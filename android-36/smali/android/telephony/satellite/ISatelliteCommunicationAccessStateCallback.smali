.class public interface abstract Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;
.super Ljava/lang/Object;
.source "ISatelliteCommunicationAccessStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteCommunicationAccessStateCallback"


# virtual methods
.method public abstract blacklist onAccessAllowedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
