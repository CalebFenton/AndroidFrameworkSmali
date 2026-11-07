.class public abstract Landroid/security/authorization/IKeystoreAuthorization$Stub;
.super Landroid/os/Binder;
.source "IKeystoreAuthorization.java"

# interfaces
.implements Landroid/security/authorization/IKeystoreAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authorization/IKeystoreAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthToken:I = 0x1

.field static final blacklist TRANSACTION_getAuthTokensForCredStore:I = 0x6

.field static final blacklist TRANSACTION_getLastAuthTime:I = 0x7

.field static final blacklist TRANSACTION_onDeviceLocked:I = 0x3

.field static final blacklist TRANSACTION_onDeviceUnlocked:I = 0x2

.field static final blacklist TRANSACTION_onNonLskfUnlockMethodsExpired:I = 0x5

.field static final blacklist TRANSACTION_onWeakUnlockMethodsExpired:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 191
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 192
    const-string v0, "android.security.authorization.IKeystoreAuthorization"

    invoke-virtual {p0, p0, v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 200
    if-nez p0, :cond_4

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_4
    const-string v0, "android.security.authorization.IKeystoreAuthorization"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 204
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/authorization/IKeystoreAuthorization;

    if-eqz v1, :cond_14

    .line 205
    move-object v1, v0

    check-cast v1, Landroid/security/authorization/IKeystoreAuthorization;

    return-object v1

    .line 207
    :cond_14
    new-instance v1, Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 216
    packed-switch p0, :pswitch_data_1e

    .line 248
    const/4 v0, 0x0

    return-object v0

    .line 244
    :pswitch_5
    const-string v0, "getLastAuthTime"

    return-object v0

    .line 240
    :pswitch_8
    const-string v0, "getAuthTokensForCredStore"

    return-object v0

    .line 236
    :pswitch_b
    const-string/jumbo v0, "onNonLskfUnlockMethodsExpired"

    return-object v0

    .line 232
    :pswitch_f
    const-string/jumbo v0, "onWeakUnlockMethodsExpired"

    return-object v0

    .line 228
    :pswitch_13
    const-string/jumbo v0, "onDeviceLocked"

    return-object v0

    .line 224
    :pswitch_17
    const-string/jumbo v0, "onDeviceUnlocked"

    return-object v0

    .line 220
    :pswitch_1b
    const-string v0, "addAuthToken"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 211
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 640
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 255
    invoke-static {p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    move-object v7, p3

    const-string v8, "android.security.authorization.IKeystoreAuthorization"

    .line 260
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 261
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 264
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v9

    .line 267
    :cond_17
    packed-switch p1, :pswitch_data_a8

    .line 348
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 337
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 339
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 340
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getLastAuthTime(J[I)J

    move-result-wide v4

    .line 342
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    goto/16 :goto_a7

    .line 323
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":J
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 325
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 327
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 328
    .local v5, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getAuthTokensForCredStore(JJJ)Landroid/security/authorization/AuthorizationTokens;

    move-result-object v10

    .line 330
    .local v10, "_result":Landroid/security/authorization/AuthorizationTokens;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v10, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 332
    goto :goto_a7

    .line 314
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v10    # "_result":Landroid/security/authorization/AuthorizationTokens;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onNonLskfUnlockMethodsExpired(I)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto :goto_a7

    .line 305
    .end local v1    # "_arg0":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onWeakUnlockMethodsExpired(I)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto :goto_a7

    .line 292
    .end local v1    # "_arg0":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 296
    .local v2, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 297
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onDeviceLocked(I[JZ)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_a7

    .line 281
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[J
    .end local v3    # "_arg2":Z
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 284
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v1, v2}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onDeviceUnlocked(I[B)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_a7

    .line 272
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_95
    sget-object v1, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 273
    .local v1, "_arg0":Landroid/hardware/security/keymint/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    nop

    .line 351
    .end local v1    # "_arg0":Landroid/hardware/security/keymint/HardwareAuthToken;
    :goto_a7
    return v9

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_95
        :pswitch_83
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
