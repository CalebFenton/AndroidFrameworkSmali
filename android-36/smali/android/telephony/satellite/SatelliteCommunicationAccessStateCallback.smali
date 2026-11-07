.class public interface abstract Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;
.super Ljava/lang/Object;
.source "SatelliteCommunicationAccessStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract blacklist onAccessAllowedStateChanged(Z)V
.end method

.method public blacklist onAccessConfigurationChanged(Landroid/telephony/satellite/SatelliteAccessConfiguration;)V
    .registers 2
    .param p1, "satelliteAccessConfiguration"    # Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 56
    return-void
.end method
