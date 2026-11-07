.class public interface abstract Lcom/android/internal/view/IDragAndDropPermissions;
.super Ljava/lang/Object;
.source "IDragAndDropPermissions.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IDragAndDropPermissions$Stub;,
        Lcom/android/internal/view/IDragAndDropPermissions$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o take(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist takeTransient()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
