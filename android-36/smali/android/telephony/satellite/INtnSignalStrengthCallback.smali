.class public interface abstract Landroid/telephony/satellite/INtnSignalStrengthCallback;
.super Ljava/lang/Object;
.source "INtnSignalStrengthCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;,
        Landroid/telephony/satellite/INtnSignalStrengthCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.INtnSignalStrengthCallback"


# virtual methods
.method public abstract blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
