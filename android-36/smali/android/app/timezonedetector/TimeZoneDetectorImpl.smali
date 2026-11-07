.class public final Landroid/app/timezonedetector/TimeZoneDetectorImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorImpl.java"

# interfaces
.implements Landroid/app/timezonedetector/TimeZoneDetector;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "timezonedetector.TimeZoneDetector"


# instance fields
.field private final blacklist mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    nop

    .line 39
    const-string/jumbo v0, "time_zone_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .registers 4
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 49
    :catch_7
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 4
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/app/timezonedetector/TimeZoneDetectorImpl;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_7
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
