.class public interface abstract Landroid/app/ITransientNotification;
.super Ljava/lang/Object;
.source "ITransientNotification.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITransientNotification$Stub;,
        Landroid/app/ITransientNotification$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist hide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r show(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
