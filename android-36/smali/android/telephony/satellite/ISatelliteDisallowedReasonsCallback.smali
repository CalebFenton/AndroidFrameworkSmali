.class public interface abstract Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;
.super Ljava/lang/Object;
.source "ISatelliteDisallowedReasonsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteDisallowedReasonsCallback"


# virtual methods
.method public abstract blacklist onSatelliteDisallowedReasonsChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
