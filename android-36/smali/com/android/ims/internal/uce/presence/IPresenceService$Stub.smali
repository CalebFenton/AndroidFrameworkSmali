.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x2

.field static final greylist-max-o TRANSACTION_getContactCap:I = 0x6

.field static final greylist-max-o TRANSACTION_getContactListCap:I = 0x7

.field static final greylist-max-o TRANSACTION_getVersion:I = 0x1

.field static final greylist-max-o TRANSACTION_publishMyCap:I = 0x5

.field static final greylist-max-o TRANSACTION_reenableService:I = 0x4

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_4
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_14

    .line 156
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceService;

    return-object v1

    .line 158
    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 167
    packed-switch p0, :pswitch_data_20

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 199
    :pswitch_5
    const-string/jumbo v0, "setNewFeatureTag"

    return-object v0

    .line 195
    :pswitch_9
    const-string v0, "getContactListCap"

    return-object v0

    .line 191
    :pswitch_c
    const-string v0, "getContactCap"

    return-object v0

    .line 187
    :pswitch_f
    const-string v0, "publishMyCap"

    return-object v0

    .line 183
    :pswitch_12
    const-string/jumbo v0, "reenableService"

    return-object v0

    .line 179
    :pswitch_16
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 175
    :pswitch_1a
    const-string v0, "addListener"

    return-object v0

    .line 171
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

    .line 162
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 607
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 210
    invoke-static {p1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    .line 215
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 216
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 219
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return v1

    .line 222
    :cond_16
    packed-switch p1, :pswitch_data_fe

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 318
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    .line 324
    .local v4, "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 325
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 327
    .local v6, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 329
    goto/16 :goto_fc

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 309
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 311
    .local v5, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 313
    goto/16 :goto_fc

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 295
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 297
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 299
    goto/16 :goto_fc

    .line 276
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    .line 280
    .local v3, "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 283
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    goto :goto_fc

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 269
    .local v4, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 271
    goto :goto_fc

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 255
    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 257
    .restart local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 259
    goto :goto_fc

    .line 237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v3

    .line 241
    .local v3, "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v4, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    .line 242
    .local v4, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 244
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    goto :goto_fc

    .line 227
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v4    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 230
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    nop

    .line 336
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_fc
    return v1

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_c5
        :pswitch_ab
        :pswitch_95
        :pswitch_77
        :pswitch_5c
        :pswitch_41
        :pswitch_1e
    .end packed-switch
.end method
