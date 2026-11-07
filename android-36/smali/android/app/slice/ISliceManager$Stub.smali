.class public abstract Landroid/app/slice/ISliceManager$Stub;
.super Landroid/os/Binder;
.source "ISliceManager.java"

# interfaces
.implements Landroid/app/slice/ISliceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/slice/ISliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/ISliceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.slice.ISliceManager"

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x7

.field static final greylist-max-o TRANSACTION_checkSlicePermission:I = 0xa

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x6

.field static final greylist-max-o TRANSACTION_getPinnedSlices:I = 0x5

.field static final greylist-max-o TRANSACTION_getPinnedSpecs:I = 0x4

.field static final greylist-max-o TRANSACTION_grantPermissionFromUser:I = 0xb

.field static final greylist-max-o TRANSACTION_grantSlicePermission:I = 0x8

.field static final greylist-max-o TRANSACTION_hasSliceAccess:I = 0x3

.field static final greylist-max-o TRANSACTION_pinSlice:I = 0x1

.field static final greylist-max-o TRANSACTION_revokeSlicePermission:I = 0x9

.field static final greylist-max-o TRANSACTION_unpinSlice:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.app.slice.ISliceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/slice/ISliceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.app.slice.ISliceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/slice/ISliceManager;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/app/slice/ISliceManager;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/app/slice/ISliceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/slice/ISliceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_2c

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_5
    const-string/jumbo v0, "grantPermissionFromUser"

    return-object v0

    .line 131
    :pswitch_9
    const-string v0, "checkSlicePermission"

    return-object v0

    .line 127
    :pswitch_c
    const-string/jumbo v0, "revokeSlicePermission"

    return-object v0

    .line 123
    :pswitch_10
    const-string/jumbo v0, "grantSlicePermission"

    return-object v0

    .line 119
    :pswitch_14
    const-string v0, "applyRestore"

    return-object v0

    .line 115
    :pswitch_17
    const-string v0, "getBackupPayload"

    return-object v0

    .line 111
    :pswitch_1a
    const-string v0, "getPinnedSlices"

    return-object v0

    .line 107
    :pswitch_1d
    const-string v0, "getPinnedSpecs"

    return-object v0

    .line 103
    :pswitch_20
    const-string/jumbo v0, "hasSliceAccess"

    return-object v0

    .line 99
    :pswitch_24
    const-string/jumbo v0, "unpinSlice"

    return-object v0

    .line 95
    :pswitch_28
    const-string/jumbo v0, "pinSlice"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 538
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 146
    invoke-static {p1}, Landroid/app/slice/ISliceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 150
    const-string v0, "android.app.slice.ISliceManager"

    .line 151
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v1

    .line 158
    :cond_16
    packed-switch p1, :pswitch_data_148

    .line 302
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 288
    :pswitch_1f
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 290
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 295
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/slice/ISliceManager$Stub;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object v3, p0

    goto/16 :goto_147

    .line 270
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_3f
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    .line 272
    .local v4, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 276
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 278
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/slice/ISliceManager$Stub;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v2

    .line 281
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    goto/16 :goto_147

    .line 257
    .end local v2    # "_result":I
    .end local v4    # "_arg0":Landroid/net/Uri;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":[Ljava/lang/String;
    :pswitch_68
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 262
    .local v5, "_arg2":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v4, v5}, Landroid/app/slice/ISliceManager$Stub;->revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_147

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/net/Uri;
    :pswitch_84
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4    # "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 249
    .restart local v5    # "_arg2":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v4, v5}, Landroid/app/slice/ISliceManager$Stub;->grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_147

    .line 233
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/net/Uri;
    :pswitch_a0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 235
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 236
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v4}, Landroid/app/slice/ISliceManager$Stub;->applyRestore([BI)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_147

    .line 223
    .end local v2    # "_arg0":[B
    .end local v4    # "_arg1":I
    :pswitch_b4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/app/slice/ISliceManager$Stub;->getBackupPayload(I)[B

    move-result-object v4

    .line 226
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 228
    goto/16 :goto_147

    .line 213
    .end local v2    # "_arg0":I
    .end local v4    # "_result":[B
    :pswitch_c8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/app/slice/ISliceManager$Stub;->getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v4

    .line 216
    .local v4, "_result":[Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 218
    goto :goto_147

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/net/Uri;
    :pswitch_db
    move-object v3, p0

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 203
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v4}, Landroid/app/slice/ISliceManager$Stub;->getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;

    move-result-object v5

    .line 206
    .local v5, "_result":[Landroid/app/slice/SliceSpec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_147

    .line 191
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":[Landroid/app/slice/SliceSpec;
    :pswitch_f6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/app/slice/ISliceManager$Stub;->hasSliceAccess(Ljava/lang/String;)Z

    move-result v4

    .line 194
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_147

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_109
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 182
    .local v4, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 183
    .local v5, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v4, v5}, Landroid/app/slice/ISliceManager$Stub;->unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_147

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/Uri;
    .end local v5    # "_arg2":Landroid/os/IBinder;
    :pswitch_124
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 167
    .restart local v4    # "_arg1":Landroid/net/Uri;
    sget-object v5, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/slice/SliceSpec;

    .line 169
    .local v5, "_arg2":[Landroid/app/slice/SliceSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 170
    .local v6, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/app/slice/ISliceManager$Stub;->pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    nop

    .line 305
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/Uri;
    .end local v5    # "_arg2":[Landroid/app/slice/SliceSpec;
    .end local v6    # "_arg3":Landroid/os/IBinder;
    :goto_147
    return v1

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_124
        :pswitch_109
        :pswitch_f6
        :pswitch_db
        :pswitch_c8
        :pswitch_b4
        :pswitch_a0
        :pswitch_84
        :pswitch_68
        :pswitch_3f
        :pswitch_1f
    .end packed-switch
.end method
