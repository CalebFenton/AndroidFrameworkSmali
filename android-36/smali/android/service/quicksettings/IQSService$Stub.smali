.class public abstract Landroid/service/quicksettings/IQSService$Stub;
.super Landroid/os/Binder;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSService"

.field static final greylist-max-o TRANSACTION_getTile:I = 0x1

.field static final greylist-max-o TRANSACTION_isLocked:I = 0x7

.field static final greylist-max-o TRANSACTION_isSecure:I = 0x8

.field static final greylist-max-o TRANSACTION_onDialogHidden:I = 0xa

.field static final greylist-max-o TRANSACTION_onShowDialog:I = 0x4

.field static final greylist-max-o TRANSACTION_onStartActivity:I = 0x5

.field static final greylist-max-o TRANSACTION_onStartSuccessful:I = 0xb

.field static final blacklist TRANSACTION_startActivity:I = 0x6

.field static final greylist-max-o TRANSACTION_startUnlockAndRun:I = 0x9

.field static final greylist-max-o TRANSACTION_updateQsTile:I = 0x2

.field static final greylist-max-o TRANSACTION_updateStatusIcon:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/service/quicksettings/IQSService;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/service/quicksettings/IQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_32

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 132
    :pswitch_5
    const-string/jumbo v0, "onStartSuccessful"

    return-object v0

    .line 128
    :pswitch_9
    const-string/jumbo v0, "onDialogHidden"

    return-object v0

    .line 124
    :pswitch_d
    const-string/jumbo v0, "startUnlockAndRun"

    return-object v0

    .line 120
    :pswitch_11
    const-string/jumbo v0, "isSecure"

    return-object v0

    .line 116
    :pswitch_15
    const-string/jumbo v0, "isLocked"

    return-object v0

    .line 112
    :pswitch_19
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 108
    :pswitch_1d
    const-string/jumbo v0, "onStartActivity"

    return-object v0

    .line 104
    :pswitch_21
    const-string/jumbo v0, "onShowDialog"

    return-object v0

    .line 100
    :pswitch_25
    const-string/jumbo v0, "updateStatusIcon"

    return-object v0

    .line 96
    :pswitch_29
    const-string/jumbo v0, "updateQsTile"

    return-object v0

    .line 92
    :pswitch_2d
    const-string/jumbo v0, "getTile"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
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

    .line 476
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 143
    invoke-static {p1}, Landroid/service/quicksettings/IQSService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 147
    const-string v0, "android.service.quicksettings.IQSService"

    .line 148
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 155
    :cond_16
    packed-switch p1, :pswitch_data_d8

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 255
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 256
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/os/IBinder;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_d7

    .line 246
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/os/IBinder;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_d7

    .line 237
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/os/IBinder;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_d7

    .line 229
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    move-result v2

    .line 230
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto/16 :goto_d7

    .line 222
    .end local v2    # "_result":Z
    :pswitch_57
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    move-result v2

    .line 223
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto/16 :goto_d7

    .line 212
    .end local v2    # "_result":Z
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 215
    .local v3, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->startActivity(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_d7

    .line 203
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/os/IBinder;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_d7

    .line 194
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/os/IBinder;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_d7

    .line 181
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 185
    .local v3, "_arg1":Landroid/graphics/drawable/Icon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_d7

    .line 170
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_af
    sget-object v2, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quicksettings/Tile;

    .line 172
    .local v2, "_arg0":Landroid/service/quicksettings/Tile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 173
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_d7

    .line 160
    .end local v2    # "_arg0":Landroid/service/quicksettings/Tile;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 161
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v3

    .line 163
    .local v3, "_result":Landroid/service/quicksettings/Tile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    nop

    .line 266
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/service/quicksettings/Tile;
    :goto_d7
    return v1

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_af
        :pswitch_95
        :pswitch_87
        :pswitch_79
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
