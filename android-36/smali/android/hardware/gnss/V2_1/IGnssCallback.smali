.class public interface abstract Landroid/hardware/gnss/V2_1/IGnssCallback;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;,
        Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;,
        Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;,
        Landroid/hardware/gnss/V2_1/IGnssCallback$Capabilities;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "android.hardware.gnss@2.1::IGnssCallback"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 19
    return-object v0

    .line 22
    :cond_4
    nop

    .line 23
    const-string v1, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 25
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/hardware/gnss/V2_1/IGnssCallback;

    if-eqz v3, :cond_15

    .line 26
    move-object v0, v2

    check-cast v0, Landroid/hardware/gnss/V2_1/IGnssCallback;

    return-object v0

    .line 29
    :cond_15
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    .local v3, "proxy":Landroid/hardware/gnss/V2_1/IGnssCallback;
    :try_start_1a
    invoke-interface {v3}, Landroid/hardware/gnss/V2_1/IGnssCallback;->interfaceChain()Ljava/util/ArrayList;

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

    .line 33
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 34
    return-object v3

    .line 36
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 38
    :cond_36
    goto :goto_38

    .line 37
    :catch_37
    move-exception v1

    .line 40
    :goto_38
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 47
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static blacklist getService()Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->getService(Ljava/lang/String;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Landroid/hardware/gnss/V2_1/IGnssCallback;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V2_1/IGnssCallback;

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

.method public abstract blacklist gnssSetCapabilitiesCb_2_1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist gnssSvStatusCb_2_1(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;",
            ">;)V"
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
