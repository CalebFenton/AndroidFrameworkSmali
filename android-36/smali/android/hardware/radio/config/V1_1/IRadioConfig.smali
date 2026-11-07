.class public interface abstract Landroid/hardware/radio/config/V1_1/IRadioConfig;
.super Ljava/lang/Object;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_0/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/V1_1/IRadioConfig$Proxy;
    }
.end annotation


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/config/V1_1/IRadioConfig;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.hardware.radio.config@1.1::IRadioConfig"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 32
    instance-of v3, v2, Landroid/hardware/radio/config/V1_1/IRadioConfig;

    if-eqz v3, :cond_13

    .line 33
    check-cast v2, Landroid/hardware/radio/config/V1_1/IRadioConfig;

    return-object v2

    .line 36
    :cond_13
    new-instance v2, Landroid/hardware/radio/config/V1_1/IRadioConfig$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/radio/config/V1_1/IRadioConfig$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 39
    :try_start_18
    invoke-interface {v2}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_21
    if-ge v4, v3, :cond_32

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2f} :catch_32

    if-eqz v5, :cond_21

    return-object v2

    :catch_32
    :cond_32
    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/radio/config/V1_1/IRadioConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "android.hardware.radio.config@1.1::IRadioConfig"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Z)Landroid/hardware/radio/config/V1_1/IRadioConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract blacklist getPhoneCapability(I)V
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

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setModemsConfig(ILandroid/hardware/radio/config/V1_1/ModemsConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setPreferredDataModem(IB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
