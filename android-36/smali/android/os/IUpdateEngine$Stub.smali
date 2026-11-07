.class public abstract Landroid/os/IUpdateEngine$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngine.java"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUpdateEngine"

.field static final blacklist TRANSACTION_allocateSpaceForPayload:I = 0xc

.field static final greylist-max-o TRANSACTION_applyPayload:I = 0x1

.field static final blacklist TRANSACTION_applyPayloadFd:I = 0x2

.field static final greylist-max-o TRANSACTION_bind:I = 0x3

.field static final greylist-max-o TRANSACTION_cancel:I = 0x7

.field static final blacklist TRANSACTION_cleanupSuccessfulUpdate:I = 0xd

.field static final blacklist TRANSACTION_resetShouldSwitchSlotOnReboot:I = 0xa

.field static final greylist-max-o TRANSACTION_resetStatus:I = 0x8

.field static final greylist-max-o TRANSACTION_resume:I = 0x6

.field static final blacklist TRANSACTION_setShouldSwitchSlotOnReboot:I = 0x9

.field static final greylist-max-o TRANSACTION_suspend:I = 0x5

.field static final blacklist TRANSACTION_triggerPostinstall:I = 0xe

.field static final greylist-max-o TRANSACTION_unbind:I = 0x4

.field static final greylist-max-o TRANSACTION_verifyPayloadApplicable:I = 0xb


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "android.os.IUpdateEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_4
    const-string v0, "android.os.IUpdateEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IUpdateEngine;

    if-eqz v1, :cond_14

    .line 140
    move-object v1, v0

    check-cast v1, Landroid/os/IUpdateEngine;

    return-object v1

    .line 142
    :cond_14
    new-instance v1, Landroid/os/IUpdateEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUpdateEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 151
    packed-switch p0, :pswitch_data_38

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_5
    const-string/jumbo v0, "triggerPostinstall"

    return-object v0

    .line 203
    :pswitch_9
    const-string v0, "cleanupSuccessfulUpdate"

    return-object v0

    .line 199
    :pswitch_c
    const-string v0, "allocateSpaceForPayload"

    return-object v0

    .line 195
    :pswitch_f
    const-string/jumbo v0, "verifyPayloadApplicable"

    return-object v0

    .line 191
    :pswitch_13
    const-string/jumbo v0, "resetShouldSwitchSlotOnReboot"

    return-object v0

    .line 187
    :pswitch_17
    const-string/jumbo v0, "setShouldSwitchSlotOnReboot"

    return-object v0

    .line 183
    :pswitch_1b
    const-string/jumbo v0, "resetStatus"

    return-object v0

    .line 179
    :pswitch_1f
    const-string v0, "cancel"

    return-object v0

    .line 175
    :pswitch_22
    const-string/jumbo v0, "resume"

    return-object v0

    .line 171
    :pswitch_26
    const-string/jumbo v0, "suspend"

    return-object v0

    .line 167
    :pswitch_2a
    const-string/jumbo v0, "unbind"

    return-object v0

    .line 163
    :pswitch_2e
    const-string v0, "bind"

    return-object v0

    .line 159
    :pswitch_31
    const-string v0, "applyPayloadFd"

    return-object v0

    .line 155
    :pswitch_34
    const-string v0, "applyPayload"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 146
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 680
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 218
    invoke-static {p1}, Landroid/os/IUpdateEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    const-string v7, "android.os.IUpdateEngine"

    .line 223
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 224
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 227
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v8

    .line 230
    :cond_16
    packed-switch p1, :pswitch_data_106

    .line 363
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 355
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->triggerPostinstall(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_105

    .line 346
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 347
    .local v1, "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_105

    .line 334
    .end local v1    # "_arg0":Landroid/os/IUpdateEngineCallback;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v1, v2}, Landroid/os/IUpdateEngine$Stub;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 339
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    goto/16 :goto_105

    .line 324
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v2

    .line 327
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_105

    .line 317
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_6a
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resetShouldSwitchSlotOnReboot()V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_105

    .line 309
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_105

    .line 302
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_81
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resetStatus()V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_105

    .line 296
    :pswitch_89
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->cancel()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_105

    .line 290
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resume()V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto :goto_105

    .line 284
    :pswitch_98
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->suspend()V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto :goto_105

    .line 275
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 276
    .local v1, "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v2

    .line 278
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_105

    .line 265
    .end local v1    # "_arg0":Landroid/os/IUpdateEngineCallback;
    .end local v2    # "_result":Z
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v2

    .line 268
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    goto :goto_105

    .line 250
    .end local v1    # "_arg0":Landroid/os/IUpdateEngineCallback;
    .end local v2    # "_result":Z
    :pswitch_cb
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 252
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 254
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 256
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_105

    .line 235
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":[Ljava/lang/String;
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 239
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 241
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 242
    .restart local v6    # "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    nop

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":[Ljava/lang/String;
    :goto_105
    return v8

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_cb
        :pswitch_b5
        :pswitch_9f
        :pswitch_98
        :pswitch_91
        :pswitch_89
        :pswitch_81
        :pswitch_72
        :pswitch_6a
        :pswitch_57
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
