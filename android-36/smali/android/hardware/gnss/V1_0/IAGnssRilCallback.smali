.class public interface abstract Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
.super Ljava/lang/Object;
.source "IAGnssRilCallback.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/V1_0/IAGnssRilCallback$Proxy;,
        Landroid/hardware/gnss/V1_0/IAGnssRilCallback$Stub;,
        Landroid/hardware/gnss/V1_0/IAGnssRilCallback$ID;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "android.hardware.gnss@1.0::IAGnssRilCallback"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 18
    return-object v0

    .line 21
    :cond_4
    nop

    .line 22
    const-string v1, "android.hardware.gnss@1.0::IAGnssRilCallback"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 24
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    if-eqz v3, :cond_15

    .line 25
    move-object v0, v2

    check-cast v0, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    return-object v0

    .line 28
    :cond_15
    new-instance v3, Landroid/hardware/gnss/V1_0/IAGnssRilCallback$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 31
    .local v3, "proxy":Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    :try_start_1a
    invoke-interface {v3}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 33
    return-object v3

    .line 35
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 37
    :cond_36
    goto :goto_38

    .line 36
    :catch_37
    move-exception v1

    .line 39
    :goto_38
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 46
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static blacklist getService()Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->getService(Ljava/lang/String;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    const-string v0, "android.hardware.gnss@1.0::IAGnssRilCallback"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "android.hardware.gnss@1.0::IAGnssRilCallback"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestRefLocCb()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestSetIdCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
