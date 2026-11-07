.class public interface abstract Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
.super Ljava/lang/Object;
.source "IMbmsGroupCallSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;,
        Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IMbmsGroupCallSessionCallback"


# virtual methods
.method public abstract blacklist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMiddlewareReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
