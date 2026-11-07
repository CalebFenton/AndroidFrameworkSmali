.class public interface abstract Landroid/os/ISystemUpdateManager;
.super Ljava/lang/Object;
.source "ISystemUpdateManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemUpdateManager$Stub;,
        Landroid/os/ISystemUpdateManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
