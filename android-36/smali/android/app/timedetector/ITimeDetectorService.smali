.class public interface abstract Landroid/app/timedetector/ITimeDetectorService;
.super Ljava/lang/Object;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub;,
        Landroid/app/timedetector/ITimeDetectorService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.timedetector.ITimeDetectorService"


# virtual methods
.method public abstract blacklist addListener(Landroid/app/time/ITimeDetectorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getTimeState()Landroid/app/time/TimeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist latestNetworkTime()Landroid/app/time/UnixEpochTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListener(Landroid/app/time/ITimeDetectorListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
