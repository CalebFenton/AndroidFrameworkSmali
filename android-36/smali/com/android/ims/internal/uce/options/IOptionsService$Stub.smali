.class public abstract Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
.super Landroid/os/Binder;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x2

.field static final greylist-max-o TRANSACTION_getContactCap:I = 0x6

.field static final greylist-max-o TRANSACTION_getContactListCap:I = 0x7

.field static final greylist-max-o TRANSACTION_getMyInfo:I = 0x5

.field static final greylist-max-o TRANSACTION_getVersion:I = 0x1

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x3

.field static final greylist-max-o TRANSACTION_responseIncomingOptions:I = 0x8

.field static final greylist-max-o TRANSACTION_setMyInfo:I = 0x4


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 142
    if-nez p0, :cond_4

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_4
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    if-eqz v1, :cond_14

    .line 147
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsService;

    return-object v1

    .line 149
    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 158
    packed-switch p0, :pswitch_data_20

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 190
    :pswitch_5
    const-string/jumbo v0, "responseIncomingOptions"

    return-object v0

    .line 186
    :pswitch_9
    const-string v0, "getContactListCap"

    return-object v0

    .line 182
    :pswitch_c
    const-string v0, "getContactCap"

    return-object v0

    .line 178
    :pswitch_f
    const-string v0, "getMyInfo"

    return-object v0

    .line 174
    :pswitch_12
    const-string/jumbo v0, "setMyInfo"

    return-object v0

    .line 170
    :pswitch_16
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 166
    :pswitch_1a
    const-string v0, "addListener"

    return-object v0

    .line 162
    :pswitch_1d
    const-string v0, "getVersion"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 153
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 598
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 201
    invoke-static {p1}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 205
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    .line 206
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 207
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return v1

    .line 213
    :cond_16
    packed-switch p1, :pswitch_data_110

    .line 328
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 309
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 315
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "_arg3":Ljava/lang/String;
    sget-object v2, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .line 319
    .local v8, "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 320
    .local v9, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v2

    .line 322
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 324
    goto/16 :goto_10f

    .line 295
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v9    # "_arg5":Z
    :pswitch_4c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 302
    .local v6, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 304
    goto/16 :goto_10f

    .line 281
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":[Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_68
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 286
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 288
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 290
    goto/16 :goto_10f

    .line 269
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_84
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v4}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 274
    .local v5, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 276
    goto/16 :goto_10f

    .line 255
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_9c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg0":I
    sget-object v4, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/CapInfo;

    .line 259
    .local v4, "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 262
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    goto :goto_10f

    .line 243
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_bb
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    .restart local v2    # "_arg0":I
    sget-object v4, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    .line 246
    .local v4, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v4}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 248
    .local v5, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    goto :goto_10f

    .line 228
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_d6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v4

    .line 232
    .local v4, "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    sget-object v5, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    .line 233
    .local v5, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 235
    .restart local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_10f

    .line 218
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v5    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_fc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 221
    .local v4, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 223
    nop

    .line 331
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_10f
    return v1

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_d6
        :pswitch_bb
        :pswitch_9c
        :pswitch_84
        :pswitch_68
        :pswitch_4c
        :pswitch_1f
    .end packed-switch
.end method
