.class public interface abstract Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;
.super Ljava/lang/Object;
.source "ISelectedNbIotSatelliteSubscriptionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Stub;,
        Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISelectedNbIotSatelliteSubscriptionCallback"


# virtual methods
.method public abstract blacklist onSelectedNbIotSatelliteSubscriptionChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
