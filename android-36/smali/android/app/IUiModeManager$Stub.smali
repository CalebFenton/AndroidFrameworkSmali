.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final blacklist TRANSACTION_addCallback:I = 0x1

.field static final blacklist TRANSACTION_addOnProjectionStateChangedListener:I = 0x17

.field static final greylist-max-o TRANSACTION_disableCarMode:I = 0x3

.field static final blacklist TRANSACTION_disableCarModeByCallingPackage:I = 0x4

.field static final greylist-max-o TRANSACTION_enableCarMode:I = 0x2

.field static final blacklist TRANSACTION_getActiveProjectionTypes:I = 0x1a

.field static final blacklist TRANSACTION_getAttentionModeThemeOverlay:I = 0xb

.field static final blacklist TRANSACTION_getContrast:I = 0x1b

.field static final greylist-max-o TRANSACTION_getCurrentModeType:I = 0x5

.field static final blacklist TRANSACTION_getCustomNightModeEnd:I = 0x13

.field static final blacklist TRANSACTION_getCustomNightModeStart:I = 0x11

.field static final blacklist TRANSACTION_getForceInvertState:I = 0x1c

.field static final greylist-max-o TRANSACTION_getNightMode:I = 0x7

.field static final blacklist TRANSACTION_getNightModeCustomType:I = 0x9

.field static final blacklist TRANSACTION_getProjectingPackages:I = 0x19

.field static final greylist-max-o TRANSACTION_isNightModeLocked:I = 0xe

.field static final greylist-max-o TRANSACTION_isUiModeLocked:I = 0xd

.field static final blacklist TRANSACTION_releaseProjection:I = 0x16

.field static final blacklist TRANSACTION_removeOnProjectionStateChangedListener:I = 0x18

.field static final blacklist TRANSACTION_requestProjection:I = 0x15

.field static final blacklist TRANSACTION_setApplicationNightMode:I = 0xc

.field static final blacklist TRANSACTION_setAttentionModeThemeOverlay:I = 0xa

.field static final blacklist TRANSACTION_setCustomNightModeEnd:I = 0x14

.field static final blacklist TRANSACTION_setCustomNightModeStart:I = 0x12

.field static final greylist-max-o TRANSACTION_setNightMode:I = 0x6

.field static final blacklist TRANSACTION_setNightModeActivated:I = 0x10

.field static final blacklist TRANSACTION_setNightModeActivatedForCustomMode:I = 0xf

.field static final blacklist TRANSACTION_setNightModeCustomType:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    nop

    .line 240
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 241
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 229
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 230
    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 231
    if-eqz p1, :cond_d

    .line 234
    iput-object p1, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 235
    return-void

    .line 232
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-p asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 248
    if-nez p0, :cond_4

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_4
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 252
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_14

    .line 253
    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    .line 255
    :cond_14
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 264
    packed-switch p0, :pswitch_data_66

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 376
    :pswitch_5
    const-string v0, "getForceInvertState"

    return-object v0

    .line 372
    :pswitch_8
    const-string v0, "getContrast"

    return-object v0

    .line 368
    :pswitch_b
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    .line 364
    :pswitch_e
    const-string v0, "getProjectingPackages"

    return-object v0

    .line 360
    :pswitch_11
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    .line 356
    :pswitch_15
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    .line 352
    :pswitch_18
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    .line 348
    :pswitch_1c
    const-string/jumbo v0, "requestProjection"

    return-object v0

    .line 344
    :pswitch_20
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    .line 340
    :pswitch_24
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    .line 336
    :pswitch_27
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    .line 332
    :pswitch_2b
    const-string v0, "getCustomNightModeStart"

    return-object v0

    .line 328
    :pswitch_2e
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    .line 324
    :pswitch_32
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    .line 320
    :pswitch_36
    const-string/jumbo v0, "isNightModeLocked"

    return-object v0

    .line 316
    :pswitch_3a
    const-string/jumbo v0, "isUiModeLocked"

    return-object v0

    .line 312
    :pswitch_3e
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    .line 308
    :pswitch_42
    const-string v0, "getAttentionModeThemeOverlay"

    return-object v0

    .line 304
    :pswitch_45
    const-string/jumbo v0, "setAttentionModeThemeOverlay"

    return-object v0

    .line 300
    :pswitch_49
    const-string v0, "getNightModeCustomType"

    return-object v0

    .line 296
    :pswitch_4c
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    .line 292
    :pswitch_50
    const-string v0, "getNightMode"

    return-object v0

    .line 288
    :pswitch_53
    const-string/jumbo v0, "setNightMode"

    return-object v0

    .line 284
    :pswitch_57
    const-string v0, "getCurrentModeType"

    return-object v0

    .line 280
    :pswitch_5a
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    .line 276
    :pswitch_5d
    const-string v0, "disableCarMode"

    return-object v0

    .line 272
    :pswitch_60
    const-string v0, "enableCarMode"

    return-object v0

    .line 268
    :pswitch_63
    const-string v0, "addCallback"

    return-object v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addOnProjectionStateChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1283
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 259
    return-object p0
.end method

.method protected blacklist getActiveProjectionTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1298
    return-void
.end method

.method protected blacklist getAttentionModeThemeOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1267
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1304
    const/16 v0, 0x1b

    return v0
.end method

.method protected blacklist getNightModeCustomType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1257
    return-void
.end method

.method protected blacklist getProjectingPackages_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1293
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 387
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 391
    const-string v0, "android.app.IUiModeManager"

    .line 392
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 393
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 396
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    return v1

    .line 399
    :cond_16
    packed-switch p1, :pswitch_data_1da

    .line 654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 647
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getForceInvertState()I

    move-result v2

    .line 648
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    goto/16 :goto_1d9

    .line 640
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getContrast()F

    move-result v2

    .line 641
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 643
    goto/16 :goto_1d9

    .line 633
    .end local v2    # "_result":F
    :pswitch_36
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    .line 634
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    goto/16 :goto_1d9

    .line 624
    .end local v2    # "_result":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 625
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    .line 627
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 629
    goto/16 :goto_1d9

    .line 615
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 616
    .local v2, "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_1d9

    .line 604
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    .line 606
    .restart local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 607
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    goto/16 :goto_1d9

    .line 592
    .end local v2    # "_arg0":Landroid/app/IOnProjectionStateChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    .line 597
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 599
    goto/16 :goto_1d9

    .line 578
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 580
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 585
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 587
    goto/16 :goto_1d9

    .line 569
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 570
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_1d9

    .line 561
    .end local v2    # "_arg0":J
    :pswitch_c0
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    .line 562
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 564
    goto/16 :goto_1d9

    .line 553
    .end local v2    # "_result":J
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 554
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto/16 :goto_1d9

    .line 545
    .end local v2    # "_arg0":J
    :pswitch_db
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    .line 546
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    goto/16 :goto_1d9

    .line 536
    .end local v2    # "_result":J
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 537
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    .line 539
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 541
    goto/16 :goto_1d9

    .line 524
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 526
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 527
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    .line 529
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 531
    goto/16 :goto_1d9

    .line 516
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_111
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    .line 517
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 519
    goto/16 :goto_1d9

    .line 509
    .end local v2    # "_result":Z
    :pswitch_11d
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    .line 510
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_1d9

    .line 501
    .end local v2    # "_result":Z
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_1d9

    .line 493
    .end local v2    # "_arg0":I
    :pswitch_138
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay()I

    move-result v2

    .line 494
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    goto/16 :goto_1d9

    .line 485
    .end local v2    # "_result":I
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay(I)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_1d9

    .line 477
    .end local v2    # "_arg0":I
    :pswitch_153
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    .line 478
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    goto/16 :goto_1d9

    .line 469
    .end local v2    # "_result":I
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto :goto_1d9

    .line 461
    .end local v2    # "_arg0":I
    :pswitch_16d
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    .line 462
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    goto :goto_1d9

    .line 453
    .end local v2    # "_result":I
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto :goto_1d9

    .line 445
    .end local v2    # "_arg0":I
    :pswitch_186
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    .line 446
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    goto :goto_1d9

    .line 435
    .end local v2    # "_result":I
    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto :goto_1d9

    .line 426
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto :goto_1d9

    .line 413
    .end local v2    # "_arg0":I
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 417
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto :goto_1d9

    .line 404
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiModeManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;

    move-result-object v2

    .line 405
    .local v2, "_arg0":Landroid/app/IUiModeManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->addCallback(Landroid/app/IUiModeManagerCallback;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    nop

    .line 657
    .end local v2    # "_arg0":Landroid/app/IUiModeManagerCallback;
    :goto_1d9
    return v1

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_1c7
        :pswitch_1b1
        :pswitch_1a3
        :pswitch_191
        :pswitch_186
        :pswitch_178
        :pswitch_16d
        :pswitch_15f
        :pswitch_153
        :pswitch_144
        :pswitch_138
        :pswitch_129
        :pswitch_11d
        :pswitch_111
        :pswitch_fa
        :pswitch_e7
        :pswitch_db
        :pswitch_cc
        :pswitch_c0
        :pswitch_b1
        :pswitch_96
        :pswitch_7f
        :pswitch_68
        :pswitch_55
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist removeOnProjectionStateChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1287
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PROJECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1288
    return-void
.end method

.method protected blacklist setAttentionModeThemeOverlay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1262
    return-void
.end method

.method protected blacklist setNightModeCustomType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Landroid/app/IUiModeManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IUiModeManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1252
    return-void
.end method
