.class public Landroid/os/IProfilingService$Default;
.super Ljava/lang/Object;
.source "IProfilingService.java"

# interfaces
.implements Landroid/os/IProfilingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProfilingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addProfilingTriggers(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ProfilingTriggerValueParcel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTriggerValueParcel;>;"
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearProfilingTriggers(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist generalListenerAdded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist processTrigger(ILjava/lang/String;I)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "triggerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist receiveFileDescriptor(Landroid/os/ParcelFileDescriptor;JJ)V
    .registers 6
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "keyMostSigBits"    # J
    .param p4, "keyLeastSigBits"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist registerResultsCallback(ZLandroid/os/IProfilingResultCallback;)V
    .registers 3
    .param p1, "isGeneralCallback"    # Z
    .param p2, "callback"    # Landroid/os/IProfilingResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist removeProfilingTriggers([ILjava/lang/String;)V
    .registers 3
    .param p1, "triggers"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist requestCancel(JJ)V
    .registers 5
    .param p1, "keyMostSigBits"    # J
    .param p3, "keyLeastSigBits"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist requestProfiling(ILandroid/os/Bundle;Ljava/lang/String;JJLjava/lang/String;)V
    .registers 9
    .param p1, "profilingType"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "keyMostSigBits"    # J
    .param p6, "keyLeastSigBits"    # J
    .param p8, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
