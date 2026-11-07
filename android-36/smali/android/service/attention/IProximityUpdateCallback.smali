.class public interface abstract Landroid/service/attention/IProximityUpdateCallback;
.super Ljava/lang/Object;
.source "IProximityUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IProximityUpdateCallback$Stub;,
        Landroid/service/attention/IProximityUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.attention.IProximityUpdateCallback"


# virtual methods
.method public abstract blacklist onProximityUpdate(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
