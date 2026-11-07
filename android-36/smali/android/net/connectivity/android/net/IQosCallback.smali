.class public interface abstract Landroid/net/connectivity/android/net/IQosCallback;
.super Ljava/lang/Object;
.source "IQosCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/IQosCallback$Stub;,
        Landroid/net/connectivity/android/net/IQosCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.IQosCallback"


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNrQosSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQosEpsBearerSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQosSessionLost(Landroid/net/QosSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
