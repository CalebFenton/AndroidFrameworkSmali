.class public abstract Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.super Landroid/os/Binder;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IAdvertisingSetCallback"

.field static final blacklist TRANSACTION_onAdvertisingDataSet:I = 0x5

.field static final blacklist TRANSACTION_onAdvertisingEnabled:I = 0x4

.field static final blacklist TRANSACTION_onAdvertisingParametersUpdated:I = 0x7

.field static final blacklist TRANSACTION_onAdvertisingSetStarted:I = 0x1

.field static final blacklist TRANSACTION_onAdvertisingSetStopped:I = 0x3

.field static final blacklist TRANSACTION_onOwnAddressRead:I = 0x2

.field static final blacklist TRANSACTION_onPeriodicAdvertisingDataSet:I = 0x9

.field static final blacklist TRANSACTION_onPeriodicAdvertisingEnabled:I = 0xa

.field static final blacklist TRANSACTION_onPeriodicAdvertisingParametersUpdated:I = 0x8

.field static final blacklist TRANSACTION_onScanResponseDataSet:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IAdvertisingSetCallback;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_24

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "onPeriodicAdvertisingEnabled"

    return-object v0

    .line 121
    :pswitch_8
    const-string v0, "onPeriodicAdvertisingDataSet"

    return-object v0

    .line 117
    :pswitch_b
    const-string v0, "onPeriodicAdvertisingParametersUpdated"

    return-object v0

    .line 113
    :pswitch_e
    const-string v0, "onAdvertisingParametersUpdated"

    return-object v0

    .line 109
    :pswitch_11
    const-string v0, "onScanResponseDataSet"

    return-object v0

    .line 105
    :pswitch_14
    const-string v0, "onAdvertisingDataSet"

    return-object v0

    .line 101
    :pswitch_17
    const-string v0, "onAdvertisingEnabled"

    return-object v0

    .line 97
    :pswitch_1a
    const-string v0, "onAdvertisingSetStopped"

    return-object v0

    .line 93
    :pswitch_1d
    const-string v0, "onOwnAddressRead"

    return-object v0

    .line 89
    :pswitch_20
    const-string v0, "onAdvertisingSetStarted"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 433
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_16
    packed-switch p1, :pswitch_data_cc

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 251
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 255
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 256
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingEnabled(IZI)V

    .line 258
    goto/16 :goto_cb

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingDataSet(II)V

    .line 246
    goto/16 :goto_cb

    .line 231
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingParametersUpdated(II)V

    .line 236
    goto/16 :goto_cb

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingParametersUpdated(III)V

    .line 226
    goto :goto_cb

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onScanResponseDataSet(II)V

    .line 214
    goto :goto_cb

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingDataSet(II)V

    .line 204
    goto :goto_cb

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 191
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 192
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingEnabled(IZI)V

    .line 194
    goto :goto_cb

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStopped(I)V

    .line 182
    goto :goto_cb

    .line 167
    .end local v2    # "_arg0":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onOwnAddressRead(IILjava/lang/String;)V

    .line 174
    goto :goto_cb

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 155
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 160
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStarted(Landroid/os/IBinder;III)V

    .line 162
    nop

    .line 265
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :goto_cb
    return v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a1
        :pswitch_96
        :pswitch_83
        :pswitch_74
        :pswitch_65
        :pswitch_52
        :pswitch_42
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
