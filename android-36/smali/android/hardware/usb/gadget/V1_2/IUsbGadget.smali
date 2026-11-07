.class public interface abstract Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
.super Ljava/lang/Object;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_1/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/V1_2/IUsbGadget$Proxy;,
        Landroid/hardware/usb/gadget/V1_2/IUsbGadget$Stub;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "android.hardware.usb.gadget@1.2::IUsbGadget"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 14
    return-object v0

    .line 17
    :cond_4
    nop

    .line 18
    const-string v1, "android.hardware.usb.gadget@1.2::IUsbGadget"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    if-eqz v3, :cond_15

    .line 21
    move-object v0, v2

    check-cast v0, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    return-object v0

    .line 24
    :cond_15
    new-instance v3, Landroid/hardware/usb/gadget/V1_2/IUsbGadget$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    :try_start_1a
    invoke-interface {v3}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->interfaceChain()Ljava/util/ArrayList;

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

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 33
    :cond_36
    goto :goto_38

    .line 32
    :catch_37
    move-exception v1

    .line 35
    :goto_38
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static blacklist getService()Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getService(Ljava/lang/String;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-string v0, "android.hardware.usb.gadget@1.2::IUsbGadget"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "android.hardware.usb.gadget@1.2::IUsbGadget"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getService(Ljava/lang/String;Z)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

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

.method public abstract blacklist getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V
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
