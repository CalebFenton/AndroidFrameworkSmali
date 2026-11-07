.class public interface abstract Landroid/os/storage/IStorageShutdownObserver;
.super Ljava/lang/Object;
.source "IStorageShutdownObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageShutdownObserver$Stub;,
        Landroid/os/storage/IStorageShutdownObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onShutDownComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
