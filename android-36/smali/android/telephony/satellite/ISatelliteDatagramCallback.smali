.class public interface abstract Landroid/telephony/satellite/ISatelliteDatagramCallback;
.super Ljava/lang/Object;
.source "ISatelliteDatagramCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteDatagramCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteDatagramCallback"


# virtual methods
.method public abstract blacklist onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
