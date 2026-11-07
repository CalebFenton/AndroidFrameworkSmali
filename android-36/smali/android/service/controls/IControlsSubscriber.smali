.class public interface abstract Landroid/service/controls/IControlsSubscriber;
.super Ljava/lang/Object;
.source "IControlsSubscriber.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsSubscriber$Stub;,
        Landroid/service/controls/IControlsSubscriber$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsSubscriber"


# virtual methods
.method public abstract blacklist onComplete(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(Landroid/os/IBinder;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
