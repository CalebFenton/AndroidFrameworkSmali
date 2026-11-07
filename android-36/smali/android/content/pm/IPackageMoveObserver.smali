.class public interface abstract Landroid/content/pm/IPackageMoveObserver;
.super Ljava/lang/Object;
.source "IPackageMoveObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageMoveObserver$Stub;,
        Landroid/content/pm/IPackageMoveObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onCreated(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStatusChanged(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
