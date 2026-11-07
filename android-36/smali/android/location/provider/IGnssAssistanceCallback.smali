.class public interface abstract Landroid/location/provider/IGnssAssistanceCallback;
.super Ljava/lang/Object;
.source "IGnssAssistanceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IGnssAssistanceCallback$Stub;,
        Landroid/location/provider/IGnssAssistanceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IGnssAssistanceCallback"


# virtual methods
.method public abstract blacklist onError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/location/GnssAssistance;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
