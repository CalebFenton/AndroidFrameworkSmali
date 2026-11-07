.class public abstract Landroid/content/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field static final greylist-max-o TRANSACTION_addPrimaryClipChangedListener:I = 0x7

.field static final blacklist TRANSACTION_areClipboardAccessNotificationsEnabledForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_clearPrimaryClip:I = 0x3

.field static final greylist-max-o TRANSACTION_getPrimaryClip:I = 0x4

.field static final greylist-max-o TRANSACTION_getPrimaryClipDescription:I = 0x5

.field static final blacklist TRANSACTION_getPrimaryClipSource:I = 0xa

.field static final greylist-max-o TRANSACTION_hasClipboardText:I = 0x9

.field static final greylist-max-o TRANSACTION_hasPrimaryClip:I = 0x6

.field static final greylist-max-o TRANSACTION_removePrimaryClipChangedListener:I = 0x8

.field static final blacklist TRANSACTION_setClipboardAccessNotificationsEnabledForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setPrimaryClip:I = 0x1

.field static final blacklist TRANSACTION_setPrimaryClipAsPackage:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    nop

    .line 85
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/IClipboard$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.content.IClipboard"

    invoke-virtual {p0, p0, v0}, Landroid/content/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_d

    .line 79
    iput-object p1, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 80
    return-void

    .line 77
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    const-string v0, "android.content.IClipboard"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/IClipboard;

    if-eqz v1, :cond_14

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/content/IClipboard;

    return-object v1

    .line 100
    :cond_14
    new-instance v1, Landroid/content/IClipboard$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 109
    packed-switch p0, :pswitch_data_30

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 157
    :pswitch_5
    const-string/jumbo v0, "setClipboardAccessNotificationsEnabledForUser"

    return-object v0

    .line 153
    :pswitch_9
    const-string v0, "areClipboardAccessNotificationsEnabledForUser"

    return-object v0

    .line 149
    :pswitch_c
    const-string v0, "getPrimaryClipSource"

    return-object v0

    .line 145
    :pswitch_f
    const-string/jumbo v0, "hasClipboardText"

    return-object v0

    .line 141
    :pswitch_13
    const-string/jumbo v0, "removePrimaryClipChangedListener"

    return-object v0

    .line 137
    :pswitch_17
    const-string v0, "addPrimaryClipChangedListener"

    return-object v0

    .line 133
    :pswitch_1a
    const-string/jumbo v0, "hasPrimaryClip"

    return-object v0

    .line 129
    :pswitch_1e
    const-string v0, "getPrimaryClipDescription"

    return-object v0

    .line 125
    :pswitch_21
    const-string v0, "getPrimaryClip"

    return-object v0

    .line 121
    :pswitch_24
    const-string v0, "clearPrimaryClip"

    return-object v0

    .line 117
    :pswitch_27
    const-string/jumbo v0, "setPrimaryClipAsPackage"

    return-object v0

    .line 113
    :pswitch_2b
    const-string/jumbo v0, "setPrimaryClip"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 651
    const/16 v0, 0xb

    return v0
.end method

.method protected blacklist getPrimaryClipSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_CLIP_SOURCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 645
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 168
    invoke-static {p1}, Landroid/content/IClipboard$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 172
    const-string v7, "android.content.IClipboard"

    .line 173
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 174
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 177
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v8

    .line 180
    :cond_16
    packed-switch p1, :pswitch_data_18c

    .line 370
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 360
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 362
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v2}, Landroid/content/IClipboard$Stub;->setClipboardAccessNotificationsEnabledForUser(ZI)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_18b

    .line 350
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/IClipboard$Stub;->areClipboardAccessNotificationsEnabledForUser(I)Z

    move-result v2

    .line 353
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    goto/16 :goto_18b

    .line 334
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 340
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 341
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->getPrimaryClipSource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    goto/16 :goto_18b

    .line 318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->hasClipboardText(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 327
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_18b

    .line 301
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v1

    .line 303
    .local v1, "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 309
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 310
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_18b

    .line 284
    .end local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v1

    .line 286
    .restart local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 293
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_18b

    .line 268
    .end local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    .line 277
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_18b

    .line 252
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->getPrimaryClipDescription(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipDescription;

    move-result-object v5

    .line 261
    .local v5, "_result":Landroid/content/ClipDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 263
    goto/16 :goto_18b

    .line 236
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/ClipDescription;
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;

    move-result-object v5

    .line 245
    .local v5, "_result":Landroid/content/ClipData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    goto :goto_18b

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/ClipData;
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IClipboard$Stub;->clearPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_18b

    .line 202
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_140
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    .line 204
    .local v1, "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/IClipboard$Stub;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_18b

    .line 185
    .end local v1    # "_arg0":Landroid/content/ClipData;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_167
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    .line 187
    .restart local v1    # "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IClipboard$Stub;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    nop

    .line 373
    .end local v1    # "_arg0":Landroid/content/ClipData;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :goto_18b
    return v8

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_167
        :pswitch_140
        :pswitch_126
        :pswitch_108
        :pswitch_e9
        :pswitch_ca
        :pswitch_a6
        :pswitch_82
        :pswitch_63
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setPrimaryClipAsPackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Landroid/content/IClipboard$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IClipboard$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_CLIP_SOURCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 633
    return-void
.end method
