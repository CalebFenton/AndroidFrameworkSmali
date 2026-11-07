.class public abstract Landroid/hardware/display/IDeviceProductInfoConstants$Stub;
.super Landroid/os/Binder;
.source "IDeviceProductInfoConstants.java"

# interfaces
.implements Landroid/hardware/display/IDeviceProductInfoConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDeviceProductInfoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.hardware.display.IDeviceProductInfoConstants"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDeviceProductInfoConstants$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDeviceProductInfoConstants;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "android.hardware.display.IDeviceProductInfoConstants"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/display/IDeviceProductInfoConstants;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDeviceProductInfoConstants;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    nop

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 63
    invoke-static {p1}, Landroid/hardware/display/IDeviceProductInfoConstants$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "android.hardware.display.IDeviceProductInfoConstants"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_c

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_c
    nop

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method
