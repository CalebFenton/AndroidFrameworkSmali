.class public Landroid/os/IUpdateEngineStable$Default;
.super Ljava/lang/Object;
.source "IUpdateEngineStable.java"

# interfaces
.implements Landroid/os/IUpdateEngineStable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngineStable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "payload_offset"    # J
    .param p4, "payload_size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bind(Landroid/os/IUpdateEngineStableCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/os/IUpdateEngineStableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unbind(Landroid/os/IUpdateEngineStableCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/os/IUpdateEngineStableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method
