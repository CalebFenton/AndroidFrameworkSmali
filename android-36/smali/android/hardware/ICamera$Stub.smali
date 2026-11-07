.class public abstract Landroid/hardware/ICamera$Stub;
.super Landroid/os/Binder;
.source "ICamera.java"

# interfaces
.implements Landroid/hardware/ICamera;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICamera$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICamera"

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.hardware.ICamera"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICamera$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ICamera;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "android.hardware.ICamera"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICamera;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICamera;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Landroid/hardware/ICamera$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICamera$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_8

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_5
    const-string v0, "disconnect"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/hardware/ICamera$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-string v0, "android.hardware.ICamera"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_16
    packed-switch p1, :pswitch_data_26

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/ICamera$Stub;->disconnect()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    nop

    .line 100
    return v1

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
