.class public interface abstract Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
.super Ljava/lang/Object;
.source "ISnapshotRuntimeProfileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;,
        Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
