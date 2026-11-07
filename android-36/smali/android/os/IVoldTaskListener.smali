.class public interface abstract Landroid/os/IVoldTaskListener;
.super Ljava/lang/Object;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldTaskListener$Stub;,
        Landroid/os/IVoldTaskListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onFinished(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStatus(ILandroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
