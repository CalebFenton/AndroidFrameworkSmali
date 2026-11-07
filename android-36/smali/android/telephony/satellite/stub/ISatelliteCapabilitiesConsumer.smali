.class public interface abstract Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
.super Ljava/lang/Object;
.source "ISatelliteCapabilitiesConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Stub;,
        Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.stub.ISatelliteCapabilitiesConsumer"


# virtual methods
.method public abstract blacklist accept(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
