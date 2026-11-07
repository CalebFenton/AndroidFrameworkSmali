.class public interface abstract Landroid/scheduling/IRebootReadinessManager;
.super Ljava/lang/Object;
.source "IRebootReadinessManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/scheduling/IRebootReadinessManager$Stub;,
        Landroid/scheduling/IRebootReadinessManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.scheduling.IRebootReadinessManager"


# virtual methods
.method public abstract blacklist addRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist cancelPendingReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isReadyToReboot()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist markRebootPending(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
