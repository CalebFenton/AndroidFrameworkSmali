.class public abstract Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.persistentdata.IPersistentDataBlockService"

.field static final blacklist TRANSACTION_deactivateFactoryResetProtection:I = 0xc

.field static final greylist-max-o TRANSACTION_getDataBlockSize:I = 0x4

.field static final greylist-max-o TRANSACTION_getFlashLockState:I = 0x8

.field static final greylist-max-o TRANSACTION_getMaximumDataBlockSize:I = 0x5

.field static final greylist-max-o TRANSACTION_getOemUnlockEnabled:I = 0x7

.field static final blacklist TRANSACTION_getPersistentDataPackageName:I = 0xa

.field static final greylist-max-o TRANSACTION_hasFrpCredentialHandle:I = 0x9

.field static final blacklist TRANSACTION_isFactoryResetProtectionActive:I = 0xb

.field static final greylist-max-o TRANSACTION_read:I = 0x2

.field static final blacklist TRANSACTION_setFactoryResetProtectionSecret:I = 0xd

.field static final greylist-max-o TRANSACTION_setOemUnlockEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_wipe:I = 0x3

.field static final greylist-max-o TRANSACTION_write:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_4

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_4
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    if-eqz v1, :cond_14

    .line 121
    move-object v1, v0

    check-cast v1, Landroid/service/persistentdata/IPersistentDataBlockService;

    return-object v1

    .line 123
    :cond_14
    new-instance v1, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 132
    packed-switch p0, :pswitch_data_34

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 184
    :pswitch_5
    const-string/jumbo v0, "setFactoryResetProtectionSecret"

    return-object v0

    .line 180
    :pswitch_9
    const-string v0, "deactivateFactoryResetProtection"

    return-object v0

    .line 176
    :pswitch_c
    const-string/jumbo v0, "isFactoryResetProtectionActive"

    return-object v0

    .line 172
    :pswitch_10
    const-string v0, "getPersistentDataPackageName"

    return-object v0

    .line 168
    :pswitch_13
    const-string/jumbo v0, "hasFrpCredentialHandle"

    return-object v0

    .line 164
    :pswitch_17
    const-string v0, "getFlashLockState"

    return-object v0

    .line 160
    :pswitch_1a
    const-string v0, "getOemUnlockEnabled"

    return-object v0

    .line 156
    :pswitch_1d
    const-string/jumbo v0, "setOemUnlockEnabled"

    return-object v0

    .line 152
    :pswitch_21
    const-string v0, "getMaximumDataBlockSize"

    return-object v0

    .line 148
    :pswitch_24
    const-string v0, "getDataBlockSize"

    return-object v0

    .line 144
    :pswitch_27
    const-string/jumbo v0, "wipe"

    return-object v0

    .line 140
    :pswitch_2b
    const-string/jumbo v0, "read"

    return-object v0

    .line 136
    :pswitch_2f
    const-string/jumbo v0, "write"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 127
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 593
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 195
    invoke-static {p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    .line 200
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 201
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 204
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return v1

    .line 207
    :cond_16
    packed-switch p1, :pswitch_data_c6

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 303
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 304
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setFactoryResetProtectionSecret([B)Z

    move-result v3

    .line 306
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_c4

    .line 293
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 294
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->deactivateFactoryResetProtection([B)Z

    move-result v3

    .line 296
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_c4

    .line 285
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_44
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->isFactoryResetProtectionActive()Z

    move-result v2

    .line 286
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto/16 :goto_c4

    .line 278
    .end local v2    # "_result":Z
    :pswitch_50
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    goto :goto_c4

    .line 271
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->hasFrpCredentialHandle()Z

    move-result v2

    .line 272
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    goto :goto_c4

    .line 264
    .end local v2    # "_result":Z
    :pswitch_66
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getFlashLockState()I

    move-result v2

    .line 265
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    goto :goto_c4

    .line 257
    .end local v2    # "_result":I
    :pswitch_71
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getOemUnlockEnabled()Z

    move-result v2

    .line 258
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_c4

    .line 249
    .end local v2    # "_result":Z
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 250
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setOemUnlockEnabled(Z)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_c4

    .line 241
    .end local v2    # "_arg0":Z
    :pswitch_8a
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getMaximumDataBlockSize()J

    move-result-wide v2

    .line 242
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    goto :goto_c4

    .line 234
    .end local v2    # "_result":J
    :pswitch_95
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDataBlockSize()I

    move-result v2

    .line 235
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_c4

    .line 228
    .end local v2    # "_result":I
    :pswitch_a0
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->wipe()V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_c4

    .line 221
    :pswitch_a7
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->read()[B

    move-result-object v2

    .line 222
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 224
    goto :goto_c4

    .line 212
    .end local v2    # "_result":[B
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 213
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->write([B)I

    move-result v3

    .line 215
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    nop

    .line 315
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :goto_c4
    return v1

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a7
        :pswitch_a0
        :pswitch_95
        :pswitch_8a
        :pswitch_7c
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_50
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
