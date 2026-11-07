.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final greylist-max-o TRANSACTION_canMakeReadOnly:I = 0x10

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_formatNdef:I = 0xb

.field static final greylist-max-o TRANSACTION_getExtendedLengthApdusSupported:I = 0x12

.field static final greylist-max-o TRANSACTION_getMaxTransceiveLength:I = 0x11

.field static final greylist-max-o TRANSACTION_getTechList:I = 0x3

.field static final greylist-max-o TRANSACTION_getTimeout:I = 0xe

.field static final greylist-max-o TRANSACTION_isNdef:I = 0x4

.field static final greylist-max-o TRANSACTION_isPresent:I = 0x5

.field static final blacklist TRANSACTION_isTagUpToDate:I = 0x13

.field static final greylist-max-o TRANSACTION_ndefIsWritable:I = 0xa

.field static final greylist-max-o TRANSACTION_ndefMakeReadOnly:I = 0x9

.field static final greylist-max-o TRANSACTION_ndefRead:I = 0x7

.field static final greylist-max-o TRANSACTION_ndefWrite:I = 0x8

.field static final greylist-max-o TRANSACTION_reconnect:I = 0x2

.field static final greylist-max-o TRANSACTION_rediscover:I = 0xc

.field static final greylist-max-o TRANSACTION_resetTimeouts:I = 0xf

.field static final greylist-max-o TRANSACTION_setTimeout:I = 0xd

.field static final greylist-max-o TRANSACTION_transceive:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "android.nfc.INfcTag"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_14

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcTag;

    return-object v1

    .line 118
    :cond_14
    new-instance v1, Landroid/nfc/INfcTag$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 127
    packed-switch p0, :pswitch_data_3e

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 203
    :pswitch_5
    const-string v0, "isTagUpToDate"

    return-object v0

    .line 199
    :pswitch_8
    const-string v0, "getExtendedLengthApdusSupported"

    return-object v0

    .line 195
    :pswitch_b
    const-string v0, "getMaxTransceiveLength"

    return-object v0

    .line 191
    :pswitch_e
    const-string v0, "canMakeReadOnly"

    return-object v0

    .line 187
    :pswitch_11
    const-string v0, "resetTimeouts"

    return-object v0

    .line 183
    :pswitch_14
    const-string v0, "getTimeout"

    return-object v0

    .line 179
    :pswitch_17
    const-string v0, "setTimeout"

    return-object v0

    .line 175
    :pswitch_1a
    const-string v0, "rediscover"

    return-object v0

    .line 171
    :pswitch_1d
    const-string v0, "formatNdef"

    return-object v0

    .line 167
    :pswitch_20
    const-string v0, "ndefIsWritable"

    return-object v0

    .line 163
    :pswitch_23
    const-string v0, "ndefMakeReadOnly"

    return-object v0

    .line 159
    :pswitch_26
    const-string v0, "ndefWrite"

    return-object v0

    .line 155
    :pswitch_29
    const-string v0, "ndefRead"

    return-object v0

    .line 151
    :pswitch_2c
    const-string v0, "transceive"

    return-object v0

    .line 147
    :pswitch_2f
    const-string v0, "isPresent"

    return-object v0

    .line 143
    :pswitch_32
    const-string v0, "isNdef"

    return-object v0

    .line 139
    :pswitch_35
    const-string v0, "getTechList"

    return-object v0

    .line 135
    :pswitch_38
    const-string v0, "reconnect"

    return-object v0

    .line 131
    :pswitch_3b
    const-string v0, "connect"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
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

    .line 122
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 813
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 214
    invoke-static {p1}, Landroid/nfc/INfcTag$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 218
    const-string v0, "android.nfc.INfcTag"

    .line 219
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 220
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v1

    .line 226
    :cond_16
    packed-switch p1, :pswitch_data_18c

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 416
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 417
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->isTagUpToDate(J)Z

    move-result v4

    .line 419
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_18b

    .line 408
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Z
    :pswitch_31
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    move-result v2

    .line 409
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 411
    goto/16 :goto_18b

    .line 399
    .end local v2    # "_result":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    move-result v3

    .line 402
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    goto/16 :goto_18b

    .line 389
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 390
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    move-result v3

    .line 392
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 394
    goto/16 :goto_18b

    .line 382
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_63
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    goto/16 :goto_18b

    .line 373
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    move-result v3

    .line 376
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    goto/16 :goto_18b

    .line 361
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    move-result v4

    .line 366
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    goto/16 :goto_18b

    .line 351
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v3

    .line 354
    .local v3, "_result":Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    goto/16 :goto_18b

    .line 339
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/Tag;
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 342
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v4

    .line 344
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    goto/16 :goto_18b

    .line 329
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":I
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v3

    .line 332
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    goto/16 :goto_18b

    .line 319
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v3

    .line 322
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto/16 :goto_18b

    .line 307
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 310
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v4

    .line 312
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    goto/16 :goto_18b

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v4    # "_result":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 300
    .local v3, "_result":Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    goto/16 :goto_18b

    .line 283
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/NdefMessage;
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 287
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 288
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v5

    .line 290
    .local v5, "_result":Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 292
    goto :goto_18b

    .line 273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Landroid/nfc/TransceiveResult;
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v3

    .line 276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    goto :goto_18b

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v3

    .line 266
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    goto :goto_18b

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v3

    .line 256
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 258
    goto :goto_18b

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v3

    .line 246
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    goto :goto_18b

    .line 231
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    move-result v4

    .line 236
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    nop

    .line 428
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_18b
    return v1

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_175
        :pswitch_163
        :pswitch_151
        :pswitch_13f
        :pswitch_12d
        :pswitch_113
        :pswitch_100
        :pswitch_e5
        :pswitch_d2
        :pswitch_bf
        :pswitch_a8
        :pswitch_95
        :pswitch_7e
        :pswitch_6b
        :pswitch_63
        :pswitch_50
        :pswitch_3d
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
