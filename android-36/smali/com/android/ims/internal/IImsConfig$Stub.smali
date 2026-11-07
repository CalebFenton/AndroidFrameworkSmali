.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final greylist-max-o TRANSACTION_getFeatureValue:I = 0x5

.field static final greylist-max-o TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final greylist-max-o TRANSACTION_getProvisionedValue:I = 0x1

.field static final greylist-max-o TRANSACTION_getVideoQuality:I = 0x8

.field static final greylist-max-o TRANSACTION_getVolteProvisioned:I = 0x7

.field static final greylist-max-o TRANSACTION_setFeatureValue:I = 0x6

.field static final greylist-max-o TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final greylist-max-o TRANSACTION_setProvisionedValue:I = 0x3

.field static final greylist-max-o TRANSACTION_setVideoQuality:I = 0x9


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsConfig;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 165
    packed-switch p0, :pswitch_data_24

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 201
    :pswitch_5
    const-string/jumbo v0, "setVideoQuality"

    return-object v0

    .line 197
    :pswitch_9
    const-string v0, "getVideoQuality"

    return-object v0

    .line 193
    :pswitch_c
    const-string v0, "getVolteProvisioned"

    return-object v0

    .line 189
    :pswitch_f
    const-string/jumbo v0, "setFeatureValue"

    return-object v0

    .line 185
    :pswitch_13
    const-string v0, "getFeatureValue"

    return-object v0

    .line 181
    :pswitch_16
    const-string/jumbo v0, "setProvisionedStringValue"

    return-object v0

    .line 177
    :pswitch_1a
    const-string/jumbo v0, "setProvisionedValue"

    return-object v0

    .line 173
    :pswitch_1e
    const-string v0, "getProvisionedStringValue"

    return-object v0

    .line 169
    :pswitch_21
    const-string v0, "getProvisionedValue"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
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

    .line 160
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 577
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 212
    invoke-static {p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 216
    const-string v0, "com.android.ims.internal.IImsConfig"

    .line 217
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_16
    packed-switch p1, :pswitch_data_d2

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 314
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v3

    .line 317
    .local v3, "_arg1":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 319
    goto/16 :goto_d0

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/ImsConfigListener;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    .line 307
    .local v2, "_arg0":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 309
    goto/16 :goto_d0

    .line 298
    .end local v2    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    move-result v2

    .line 299
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto/16 :goto_d0

    .line 285
    .end local v2    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 292
    .local v5, "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 294
    goto :goto_d0

    .line 273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v4

    .line 278
    .local v4, "_arg2":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 280
    goto :goto_d0

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v4

    .line 266
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    goto :goto_d0

    .line 249
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    move-result v4

    .line 254
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto :goto_d0

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    goto :goto_d0

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    move-result v3

    .line 232
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    nop

    .line 326
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :goto_d0
    return v1

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_be
        :pswitch_ac
        :pswitch_96
        :pswitch_80
        :pswitch_69
        :pswitch_4e
        :pswitch_42
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
