.class public abstract Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.super Landroid/os/Binder;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IPeriodicAdvertisingCallback"

.field static final blacklist TRANSACTION_onBigInfoAdvertisingReport:I = 0x5

.field static final blacklist TRANSACTION_onPeriodicAdvertisingReport:I = 0x2

.field static final blacklist TRANSACTION_onSyncEstablished:I = 0x1

.field static final blacklist TRANSACTION_onSyncLost:I = 0x3

.field static final blacklist TRANSACTION_onSyncTransferred:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "onBigInfoAdvertisingReport"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "onSyncTransferred"

    return-object v0

    .line 82
    :pswitch_b
    const-string v0, "onSyncLost"

    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "onPeriodicAdvertisingReport"

    return-object v0

    .line 74
    :pswitch_11
    const-string v0, "onSyncEstablished"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 269
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_16
    packed-switch p1, :pswitch_data_80

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 162
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 165
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onBigInfoAdvertisingReport(IZ)V

    .line 167
    goto :goto_7f

    .line 152
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2d
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 154
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V

    .line 157
    goto :goto_7f

    .line 144
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncLost(I)V

    .line 147
    goto :goto_7f

    .line 136
    .end local v2    # "_arg0":I
    :pswitch_4b
    sget-object v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 137
    .local v2, "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    .line 139
    goto :goto_7f

    .line 118
    .end local v2    # "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 120
    .local v4, "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 122
    .local v5, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 124
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 126
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 128
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 129
    .local v9, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 131
    nop

    .line 174
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4b
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
