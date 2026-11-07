.class public abstract Landroid/nearby/IScanListener$Stub;
.super Landroid/os/Binder;
.source "IScanListener.java"

# interfaces
.implements Landroid/nearby/IScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/IScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/IScanListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDiscovered:I = 0x1

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onLost:I = 0x3

.field static final blacklist TRANSACTION_onUpdated:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.nearby.IScanListener"

    invoke-virtual {p0, p0, v0}, Landroid/nearby/IScanListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nearby/IScanListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.nearby.IScanListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nearby/IScanListener;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/nearby/IScanListener;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/nearby/IScanListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nearby/IScanListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_12

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string v0, "onError"

    return-object v0

    .line 84
    :pswitch_8
    const-string v0, "onLost"

    return-object v0

    .line 80
    :pswitch_b
    const-string v0, "onUpdated"

    return-object v0

    .line 76
    :pswitch_e
    const-string v0, "onDiscovered"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 227
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/nearby/IScanListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    const-string v0, "android.nearby.IScanListener"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_16
    packed-switch p1, :pswitch_data_58

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 140
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/nearby/IScanListener$Stub;->onError(I)V

    .line 143
    goto :goto_56

    .line 132
    .end local v2    # "_arg0":I
    :pswitch_29
    sget-object v2, Landroid/nearby/NearbyDeviceParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyDeviceParcelable;

    .line 133
    .local v2, "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/nearby/IScanListener$Stub;->onLost(Landroid/nearby/NearbyDeviceParcelable;)V

    .line 135
    goto :goto_56

    .line 124
    .end local v2    # "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    :pswitch_38
    sget-object v2, Landroid/nearby/NearbyDeviceParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyDeviceParcelable;

    .line 125
    .restart local v2    # "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/nearby/IScanListener$Stub;->onUpdated(Landroid/nearby/NearbyDeviceParcelable;)V

    .line 127
    goto :goto_56

    .line 116
    .end local v2    # "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    :pswitch_47
    sget-object v2, Landroid/nearby/NearbyDeviceParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/NearbyDeviceParcelable;

    .line 117
    .restart local v2    # "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/nearby/IScanListener$Stub;->onDiscovered(Landroid/nearby/NearbyDeviceParcelable;)V

    .line 119
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/nearby/NearbyDeviceParcelable;
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_47
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
