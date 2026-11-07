.class public interface abstract Landroid/location/ILocationCallback;
.super Ljava/lang/Object;
.source "ILocationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationCallback$Stub;,
        Landroid/location/ILocationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationCallback"


# virtual methods
.method public abstract blacklist onLocation(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
