.class public abstract Landroid/nfc/INfcFCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcFCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcFCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcFCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcFCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcFCardEmulation"

.field static final greylist-max-o TRANSACTION_disableNfcFForegroundService:I = 0x7

.field static final greylist-max-o TRANSACTION_enableNfcFForegroundService:I = 0x6

.field static final greylist-max-o TRANSACTION_getMaxNumOfRegisterableSystemCodes:I = 0x9

.field static final greylist-max-o TRANSACTION_getNfcFServices:I = 0x8

.field static final greylist-max-o TRANSACTION_getNfcid2ForService:I = 0x4

.field static final greylist-max-o TRANSACTION_getSystemCodeForService:I = 0x1

.field static final greylist-max-o TRANSACTION_registerSystemCodeForService:I = 0x2

.field static final greylist-max-o TRANSACTION_removeSystemCodeForService:I = 0x3

.field static final greylist-max-o TRANSACTION_setNfcid2ForService:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcFCardEmulation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.nfc.INfcFCardEmulation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcFCardEmulation;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcFCardEmulation;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_20

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :pswitch_5
    const-string v0, "getMaxNumOfRegisterableSystemCodes"

    return-object v0

    .line 120
    :pswitch_8
    const-string v0, "getNfcFServices"

    return-object v0

    .line 116
    :pswitch_b
    const-string v0, "disableNfcFForegroundService"

    return-object v0

    .line 112
    :pswitch_e
    const-string v0, "enableNfcFForegroundService"

    return-object v0

    .line 108
    :pswitch_11
    const-string v0, "setNfcid2ForService"

    return-object v0

    .line 104
    :pswitch_14
    const-string v0, "getNfcid2ForService"

    return-object v0

    .line 100
    :pswitch_17
    const-string v0, "removeSystemCodeForService"

    return-object v0

    .line 96
    :pswitch_1a
    const-string v0, "registerSystemCodeForService"

    return-object v0

    .line 92
    :pswitch_1d
    const-string v0, "getSystemCodeForService"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 451
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/nfc/INfcFCardEmulation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 139
    const-string v0, "android.nfc.INfcFCardEmulation"

    .line 140
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v1

    .line 147
    :cond_16
    packed-switch p1, :pswitch_data_ec

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 242
    :pswitch_1e
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->getMaxNumOfRegisterableSystemCodes()I

    move-result v2

    .line 243
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    goto/16 :goto_ea

    .line 233
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcFServices(I)Ljava/util/List;

    move-result-object v3

    .line 236
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 238
    goto/16 :goto_ea

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :pswitch_3d
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->disableNfcFForegroundService()Z

    move-result v2

    .line 226
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    goto/16 :goto_ea

    .line 216
    .end local v2    # "_result":Z
    :pswitch_49
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 217
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v3

    .line 219
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 221
    goto/16 :goto_ea

    .line 202
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 206
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcFCardEmulation$Stub;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 209
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto :goto_ea

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 193
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    goto :goto_ea

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 181
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 183
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_ea

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 168
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcFCardEmulation$Stub;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 171
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto :goto_ea

    .line 152
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 155
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    nop

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/String;
    :goto_ea
    return v1

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_b2
        :pswitch_98
        :pswitch_7e
        :pswitch_60
        :pswitch_49
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
