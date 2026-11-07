.class public interface abstract Landroid/app/timezonedetector/ITimeZoneDetectorService;
.super Ljava/lang/Object;
.source "ITimeZoneDetectorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;,
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.timezonedetector.ITimeZoneDetectorService"


# virtual methods
.method public abstract blacklist addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist confirmTimeZone(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getTimeZoneState()Landroid/app/time/TimeZoneState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
