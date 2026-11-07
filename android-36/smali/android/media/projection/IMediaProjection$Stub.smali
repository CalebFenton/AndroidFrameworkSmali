.class public abstract Landroid/media/projection/IMediaProjection$Stub;
.super Landroid/os/Binder;
.source "IMediaProjection.java"

# interfaces
.implements Landroid/media/projection/IMediaProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjection"

.field static final greylist-max-o TRANSACTION_applyVirtualDisplayFlags:I = 0x6

.field static final greylist-max-o TRANSACTION_canProjectAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_canProjectSecureVideo:I = 0x5

.field static final greylist-max-o TRANSACTION_canProjectVideo:I = 0x4

.field static final blacklist TRANSACTION_getDisplayId:I = 0xb

.field static final blacklist TRANSACTION_getLaunchCookie:I = 0x9

.field static final blacklist TRANSACTION_getTaskId:I = 0xa

.field static final blacklist TRANSACTION_isValid:I = 0xe

.field static final blacklist TRANSACTION_notifyVirtualDisplayCreated:I = 0xf

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x7

.field static final blacklist TRANSACTION_setLaunchCookie:I = 0xc

.field static final blacklist TRANSACTION_setTaskId:I = 0xd

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    nop

    .line 119
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/projection/IMediaProjection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 120
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_d

    .line 113
    iput-object p1, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 114
    return-void

    .line 111
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_4
    const-string v0, "android.media.projection.IMediaProjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/projection/IMediaProjection;

    if-eqz v1, :cond_14

    .line 132
    move-object v1, v0

    check-cast v1, Landroid/media/projection/IMediaProjection;

    return-object v1

    .line 134
    :cond_14
    new-instance v1, Landroid/media/projection/IMediaProjection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 143
    packed-switch p0, :pswitch_data_32

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 203
    :pswitch_5
    const-string v0, "notifyVirtualDisplayCreated"

    return-object v0

    .line 199
    :pswitch_8
    const-string v0, "isValid"

    return-object v0

    .line 195
    :pswitch_b
    const-string v0, "setTaskId"

    return-object v0

    .line 191
    :pswitch_e
    const-string v0, "setLaunchCookie"

    return-object v0

    .line 187
    :pswitch_11
    const-string v0, "getDisplayId"

    return-object v0

    .line 183
    :pswitch_14
    const-string v0, "getTaskId"

    return-object v0

    .line 179
    :pswitch_17
    const-string v0, "getLaunchCookie"

    return-object v0

    .line 175
    :pswitch_1a
    const-string v0, "unregisterCallback"

    return-object v0

    .line 171
    :pswitch_1d
    const-string v0, "registerCallback"

    return-object v0

    .line 167
    :pswitch_20
    const-string v0, "applyVirtualDisplayFlags"

    return-object v0

    .line 163
    :pswitch_23
    const-string v0, "canProjectSecureVideo"

    return-object v0

    .line 159
    :pswitch_26
    const-string v0, "canProjectVideo"

    return-object v0

    .line 155
    :pswitch_29
    const-string v0, "canProjectAudio"

    return-object v0

    .line 151
    :pswitch_2c
    const-string v0, "stop"

    return-object v0

    .line 147
    :pswitch_2f
    const-string v0, "start"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
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
.method protected blacklist applyVirtualDisplayFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 654
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
    return-object p0
.end method

.method protected blacklist getLaunchCookie_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 661
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 691
    const/16 v0, 0xe

    return v0
.end method

.method protected blacklist getTaskId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 666
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 214
    invoke-static {p1}, Landroid/media/projection/IMediaProjection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isValid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 681
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 682
    return-void
.end method

.method protected blacklist notifyVirtualDisplayCreated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 687
    return-void
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

    .line 218
    const-string v0, "android.media.projection.IMediaProjection"

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
    packed-switch p1, :pswitch_data_f8

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 344
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->notifyVirtualDisplayCreated(I)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto/16 :goto_f6

    .line 336
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->isValid()Z

    move-result v2

    .line 337
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto/16 :goto_f6

    .line 328
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->setTaskId(I)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_f6

    .line 319
    .end local v2    # "_arg0":I
    :pswitch_48
    sget-object v2, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityOptions$LaunchCookie;

    .line 320
    .local v2, "_arg0":Landroid/app/ActivityOptions$LaunchCookie;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_f6

    .line 311
    .end local v2    # "_arg0":Landroid/app/ActivityOptions$LaunchCookie;
    :pswitch_5b
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getDisplayId()I

    move-result v2

    .line 312
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    goto/16 :goto_f6

    .line 304
    .end local v2    # "_result":I
    :pswitch_67
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getTaskId()I

    move-result v2

    .line 305
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    goto/16 :goto_f6

    .line 297
    .end local v2    # "_result":I
    :pswitch_73
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v2

    .line 298
    .local v2, "_result":Landroid/app/ActivityOptions$LaunchCookie;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 300
    goto/16 :goto_f6

    .line 289
    .end local v2    # "_result":Landroid/app/ActivityOptions$LaunchCookie;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 290
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto :goto_f6

    .line 280
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto :goto_f6

    .line 270
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->applyVirtualDisplayFlags(I)I

    move-result v3

    .line 273
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    goto :goto_f6

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b5
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectSecureVideo()Z

    move-result v2

    .line 263
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 265
    goto :goto_f6

    .line 255
    .end local v2    # "_result":Z
    :pswitch_c0
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectVideo()Z

    move-result v2

    .line 256
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    goto :goto_f6

    .line 248
    .end local v2    # "_result":Z
    :pswitch_cb
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectAudio()Z

    move-result v2

    .line 249
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto :goto_f6

    .line 240
    .end local v2    # "_result":Z
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->stop(I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_f6

    .line 231
    .end local v2    # "_arg0":I
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjection$Stub;->start(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    nop

    .line 355
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :goto_f6
    return v1

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_d6
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_a3
        :pswitch_91
        :pswitch_7f
        :pswitch_73
        :pswitch_67
        :pswitch_5b
        :pswitch_48
        :pswitch_39
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setLaunchCookie_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 672
    return-void
.end method

.method protected blacklist setTaskId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Landroid/media/projection/IMediaProjection$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjection$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 677
    return-void
.end method
