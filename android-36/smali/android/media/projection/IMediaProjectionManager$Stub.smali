.class public abstract Landroid/media/projection/IMediaProjectionManager$Stub;
.super Landroid/os/Binder;
.source "IMediaProjectionManager.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjectionManager"

.field static final greylist-max-o TRANSACTION_addCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_createProjection:I = 0x2

.field static final greylist-max-o TRANSACTION_getActiveProjectionInfo:I = 0x6

.field static final blacklist TRANSACTION_getProjection:I = 0x3

.field static final greylist-max-o TRANSACTION_hasProjectionPermission:I = 0x1

.field static final blacklist TRANSACTION_isCurrentProjection:I = 0x4

.field static final blacklist TRANSACTION_notifyActiveProjectionCapturedContentVisibilityChanged:I = 0x8

.field static final blacklist TRANSACTION_notifyAppSelectorDisplayed:I = 0x10

.field static final blacklist TRANSACTION_notifyCaptureBoundsChanged:I = 0x12

.field static final blacklist TRANSACTION_notifyPermissionRequestCancelled:I = 0xf

.field static final blacklist TRANSACTION_notifyPermissionRequestDisplayed:I = 0xe

.field static final blacklist TRANSACTION_notifyPermissionRequestInitiated:I = 0xd

.field static final blacklist TRANSACTION_notifyWindowingModeChanged:I = 0x11

.field static final greylist-max-o TRANSACTION_removeCallback:I = 0xa

.field static final blacklist TRANSACTION_requestConsentForInvalidProjection:I = 0x5

.field static final blacklist TRANSACTION_setContentRecordingSession:I = 0xb

.field static final blacklist TRANSACTION_setUserReviewGrantedConsentResult:I = 0xc

.field static final greylist-max-o TRANSACTION_stopActiveProjection:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    nop

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 204
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 192
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 193
    const-string v0, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 194
    if-eqz p1, :cond_d

    .line 197
    iput-object p1, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 198
    return-void

    .line 195
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 211
    if-nez p0, :cond_4

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_4
    const-string v0, "android.media.projection.IMediaProjectionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 215
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/projection/IMediaProjectionManager;

    if-eqz v1, :cond_14

    .line 216
    move-object v1, v0

    check-cast v1, Landroid/media/projection/IMediaProjectionManager;

    return-object v1

    .line 218
    :cond_14
    new-instance v1, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 227
    packed-switch p0, :pswitch_data_3c

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 299
    :pswitch_5
    const-string v0, "notifyCaptureBoundsChanged"

    return-object v0

    .line 295
    :pswitch_8
    const-string v0, "notifyWindowingModeChanged"

    return-object v0

    .line 291
    :pswitch_b
    const-string v0, "notifyAppSelectorDisplayed"

    return-object v0

    .line 287
    :pswitch_e
    const-string v0, "notifyPermissionRequestCancelled"

    return-object v0

    .line 283
    :pswitch_11
    const-string v0, "notifyPermissionRequestDisplayed"

    return-object v0

    .line 279
    :pswitch_14
    const-string v0, "notifyPermissionRequestInitiated"

    return-object v0

    .line 275
    :pswitch_17
    const-string v0, "setUserReviewGrantedConsentResult"

    return-object v0

    .line 271
    :pswitch_1a
    const-string v0, "setContentRecordingSession"

    return-object v0

    .line 267
    :pswitch_1d
    const-string v0, "removeCallback"

    return-object v0

    .line 263
    :pswitch_20
    const-string v0, "addCallback"

    return-object v0

    .line 259
    :pswitch_23
    const-string v0, "notifyActiveProjectionCapturedContentVisibilityChanged"

    return-object v0

    .line 255
    :pswitch_26
    const-string v0, "stopActiveProjection"

    return-object v0

    .line 251
    :pswitch_29
    const-string v0, "getActiveProjectionInfo"

    return-object v0

    .line 247
    :pswitch_2c
    const-string v0, "requestConsentForInvalidProjection"

    return-object v0

    .line 243
    :pswitch_2f
    const-string v0, "isCurrentProjection"

    return-object v0

    .line 239
    :pswitch_32
    const-string v0, "getProjection"

    return-object v0

    .line 235
    :pswitch_35
    const-string v0, "createProjection"

    return-object v0

    .line 231
    :pswitch_38
    const-string v0, "hasProjectionPermission"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
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
.method protected blacklist addCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 956
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 222
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1001
    const/16 v0, 0x11

    return v0
.end method

.method protected blacklist getProjection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 930
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 310
    invoke-static {p1}, Landroid/media/projection/IMediaProjectionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isCurrentProjection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 935
    return-void
.end method

.method protected blacklist notifyActiveProjectionCapturedContentVisibilityChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 951
    return-void
.end method

.method protected blacklist notifyAppSelectorDisplayed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 986
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 987
    return-void
.end method

.method protected blacklist notifyCaptureBoundsChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 997
    return-void
.end method

.method protected blacklist notifyPermissionRequestCancelled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 982
    return-void
.end method

.method protected blacklist notifyPermissionRequestDisplayed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 977
    return-void
.end method

.method protected blacklist notifyPermissionRequestInitiated_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 972
    return-void
.end method

.method protected blacklist notifyWindowingModeChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 991
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 992
    return-void
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

    .line 314
    const-string v0, "android.media.projection.IMediaProjectionManager"

    .line 315
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 316
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 319
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    return v1

    .line 322
    :cond_16
    packed-switch p1, :pswitch_data_192

    .line 512
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 501
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 503
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 505
    .local v3, "_arg1":I
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 506
    .local v4, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V

    .line 508
    move-object v5, p0

    goto/16 :goto_191

    .line 489
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 494
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyWindowingModeChanged(III)V

    .line 496
    move-object v5, p0

    goto/16 :goto_191

    .line 481
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyAppSelectorDisplayed(I)V

    .line 484
    move-object v5, p0

    goto/16 :goto_191

    .line 473
    .end local v2    # "_arg0":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestCancelled(I)V

    .line 476
    move-object v5, p0

    goto/16 :goto_191

    .line 465
    .end local v2    # "_arg0":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestDisplayed(I)V

    .line 468
    move-object v5, p0

    goto/16 :goto_191

    .line 455
    .end local v2    # "_arg0":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 457
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 458
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyPermissionRequestInitiated(II)V

    .line 460
    move-object v5, p0

    goto/16 :goto_191

    .line 444
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    .line 447
    .local v3, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object v5, p0

    goto/16 :goto_191

    .line 432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/projection/IMediaProjection;
    :pswitch_9d
    sget-object v2, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ContentRecordingSession;

    .line 434
    .local v2, "_arg0":Landroid/view/ContentRecordingSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    .line 435
    .restart local v3    # "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z

    move-result v4

    .line 437
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    move-object v5, p0

    goto/16 :goto_191

    .line 423
    .end local v2    # "_arg0":Landroid/view/ContentRecordingSession;
    .end local v3    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v4    # "_result":Z
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .line 424
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object v5, p0

    goto/16 :goto_191

    .line 413
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .line 414
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v3

    .line 416
    .local v3, "_result":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 418
    move-object v5, p0

    goto/16 :goto_191

    .line 404
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    .end local v3    # "_result":Landroid/media/projection/MediaProjectionInfo;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 405
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move-object v5, p0

    goto/16 :goto_191

    .line 395
    .end local v2    # "_arg0":Z
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection(I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    move-object v5, p0

    goto/16 :goto_191

    .line 387
    .end local v2    # "_arg0":I
    :pswitch_109
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    .line 388
    .local v2, "_result":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 390
    move-object v5, p0

    goto/16 :goto_191

    .line 379
    .end local v2    # "_result":Landroid/media/projection/MediaProjectionInfo;
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 380
    .local v2, "_arg0":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object v5, p0

    goto :goto_191

    .line 369
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjection;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 370
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    .line 372
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 374
    move-object v5, p0

    goto :goto_191

    .line 357
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_result":Z
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;

    move-result-object v4

    .line 362
    .local v4, "_result":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 364
    move-object v5, p0

    goto :goto_191

    .line 339
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/media/projection/IMediaProjection;
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 341
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 345
    .local v8, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 347
    .local v9, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 348
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/media/projection/IMediaProjectionManager$Stub;->createProjection(ILjava/lang/String;IZI)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 350
    .local v2, "_result":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 352
    goto :goto_191

    .line 327
    .end local v2    # "_result":Landroid/media/projection/IMediaProjection;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Z
    .end local v10    # "_arg4":I
    :pswitch_17a
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v4

    .line 332
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    nop

    .line 515
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :goto_191
    return v1

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_157
        :pswitch_140
        :pswitch_129
        :pswitch_116
        :pswitch_109
        :pswitch_f9
        :pswitch_e9
        :pswitch_d1
        :pswitch_bd
        :pswitch_9d
        :pswitch_85
        :pswitch_74
        :pswitch_67
        :pswitch_5a
        :pswitch_4d
        :pswitch_38
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist requestConsentForInvalidProjection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 940
    return-void
.end method

.method protected blacklist setContentRecordingSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 962
    return-void
.end method

.method protected blacklist setUserReviewGrantedConsentResult_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 967
    return-void
.end method

.method protected blacklist stopActiveProjection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Landroid/media/projection/IMediaProjectionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/projection/IMediaProjectionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 946
    return-void
.end method
