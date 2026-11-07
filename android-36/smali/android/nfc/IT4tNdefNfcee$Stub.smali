.class public abstract Landroid/nfc/IT4tNdefNfcee$Stub;
.super Landroid/os/Binder;
.source "IT4tNdefNfcee.java"

# interfaces
.implements Landroid/nfc/IT4tNdefNfcee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IT4tNdefNfcee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IT4tNdefNfcee$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearNdefData:I = 0x3

.field static final blacklist TRANSACTION_isNdefNfceeEmulationSupported:I = 0x5

.field static final blacklist TRANSACTION_isNdefOperationOngoing:I = 0x4

.field static final blacklist TRANSACTION_readCcfile:I = 0x6

.field static final blacklist TRANSACTION_readData:I = 0x2

.field static final blacklist TRANSACTION_writeData:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.nfc.IT4tNdefNfcee"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/IT4tNdefNfcee$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nfc/IT4tNdefNfcee;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.nfc.IT4tNdefNfcee"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/IT4tNdefNfcee;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/nfc/IT4tNdefNfcee;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/nfc/IT4tNdefNfcee$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/IT4tNdefNfcee$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_18

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string v0, "readCcfile"

    return-object v0

    .line 96
    :pswitch_8
    const-string v0, "isNdefNfceeEmulationSupported"

    return-object v0

    .line 92
    :pswitch_b
    const-string v0, "isNdefOperationOngoing"

    return-object v0

    .line 88
    :pswitch_e
    const-string v0, "clearNdefData"

    return-object v0

    .line 84
    :pswitch_11
    const-string v0, "readData"

    return-object v0

    .line 80
    :pswitch_14
    const-string v0, "writeData"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 312
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Landroid/nfc/IT4tNdefNfcee$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-string v0, "android.nfc.IT4tNdefNfcee"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 170
    :pswitch_1e
    invoke-virtual {p0}, Landroid/nfc/IT4tNdefNfcee$Stub;->readCcfile()Landroid/nfc/T4tNdefNfceeCcFileInfo;

    move-result-object v2

    .line 171
    .local v2, "_result":Landroid/nfc/T4tNdefNfceeCcFileInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    goto :goto_72

    .line 163
    .end local v2    # "_result":Landroid/nfc/T4tNdefNfceeCcFileInfo;
    :pswitch_29
    invoke-virtual {p0}, Landroid/nfc/IT4tNdefNfcee$Stub;->isNdefNfceeEmulationSupported()Z

    move-result v2

    .line 164
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    goto :goto_72

    .line 156
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Landroid/nfc/IT4tNdefNfcee$Stub;->isNdefOperationOngoing()Z

    move-result v2

    .line 157
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    goto :goto_72

    .line 149
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual {p0}, Landroid/nfc/IT4tNdefNfcee$Stub;->clearNdefData()I

    move-result v2

    .line 150
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    goto :goto_72

    .line 140
    .end local v2    # "_result":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/nfc/IT4tNdefNfcee$Stub;->readData(I)[B

    move-result-object v3

    .line 143
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    goto :goto_72

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 131
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/nfc/IT4tNdefNfcee$Stub;->writeData(I[B)I

    move-result v4

    .line 133
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    nop

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
