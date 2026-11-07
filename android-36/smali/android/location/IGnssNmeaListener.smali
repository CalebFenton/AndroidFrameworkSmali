.class public interface abstract Landroid/location/IGnssNmeaListener;
.super Ljava/lang/Object;
.source "IGnssNmeaListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssNmeaListener$Stub;,
        Landroid/location/IGnssNmeaListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.IGnssNmeaListener"


# virtual methods
.method public abstract blacklist onNmeaReceived(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
