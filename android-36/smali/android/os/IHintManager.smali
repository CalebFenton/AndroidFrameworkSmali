.class public interface abstract Landroid/os/IHintManager;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$IHintManagerClient;,
        Landroid/os/IHintManager$HintManagerClientData;,
        Landroid/os/IHintManager$SessionCreationReturn;,
        Landroid/os/IHintManager$Stub;,
        Landroid/os/IHintManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IHintManager"


# virtual methods
.method public abstract blacklist closeSessionChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getClientData()Landroid/os/IHintManager$HintManagerClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCpuHeadroomMinIntervalMillis()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getGpuHeadroomMinIntervalMillis()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHintSessionThreadIds(Landroid/os/IHintSession;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist passSessionManagerBinder(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHintSessionThreads(Landroid/os/IHintSession;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
