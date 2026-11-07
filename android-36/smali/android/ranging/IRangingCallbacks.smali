.class public interface abstract Landroid/ranging/IRangingCallbacks;
.super Ljava/lang/Object;
.source "IRangingCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/IRangingCallbacks$Stub;,
        Landroid/ranging/IRangingCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ranging.IRangingCallbacks"


# virtual methods
.method public abstract blacklist onClosed(Landroid/ranging/SessionHandle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOpenFailed(Landroid/ranging/SessionHandle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOpened(Landroid/ranging/SessionHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResults(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStarted(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStopped(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
