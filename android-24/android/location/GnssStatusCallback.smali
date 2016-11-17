.class public abstract Landroid/location/GnssStatusCallback;
.super Ljava/lang/Object;
.source "GnssStatusCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0
    .param p1, "ttffMillis"    # I

    #@0
    .prologue
    .line 38
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    #@0
    .prologue
    .line 44
    return-void
.end method

.method public onStarted()V
    .locals 0

    #@0
    .prologue
    .line 27
    return-void
.end method

.method public onStopped()V
    .locals 0

    #@0
    .prologue
    .line 32
    return-void
.end method
