.class Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 366
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist attachAccessibilityOverlayToWindow(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 553
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 555
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    nop

    .line 560
    return-void

    .line 558
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw v1
.end method

.method public blacklist clearAccessibilityFocus()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 503
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    nop

    .line 509
    return-void

    .line 507
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    throw v1
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "bounds"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrixValues"    # [F
    .param p12, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 379
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_74

    .line 381
    const/4 v0, 0x0

    move-object/from16 v4, p3

    :try_start_15
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_70

    .line 382
    move/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6c

    .line 383
    move-object/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_68

    .line 384
    move/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_64

    .line 385
    move/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_60

    .line 386
    move-wide/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5c

    .line 387
    move-object/from16 v11, p10

    :try_start_33
    invoke-virtual {v1, v11, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_58

    .line 388
    move-object/from16 v12, p11

    :try_start_38
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_54

    .line 389
    move-object/from16 v13, p12

    :try_start_3d
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_50

    .line 390
    move-object/from16 v14, p0

    :try_start_42
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4e

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_4e
    move-exception v0

    goto :goto_89

    :catchall_50
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_89

    :catchall_54
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_87

    :catchall_58
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_85

    :catchall_5c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_83

    :catchall_60
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_81

    :catchall_64
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7f

    :catchall_68
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7d

    :catchall_6c
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7b

    :catchall_70
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_79

    :catchall_74
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_79
    move/from16 v5, p4

    :goto_7b
    move-object/from16 v6, p5

    :goto_7d
    move/from16 v7, p6

    :goto_7f
    move/from16 v8, p7

    :goto_81
    move-wide/from16 v9, p8

    :goto_83
    move-object/from16 v11, p10

    :goto_85
    move-object/from16 v12, p11

    :goto_87
    move-object/from16 v13, p12

    :goto_89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v0
.end method

.method public blacklist findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 421
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_75

    .line 423
    move-object/from16 v4, p3

    :try_start_14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    .line 424
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6d

    .line 425
    move/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_69

    .line 426
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_65

    .line 427
    move/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_61

    .line 428
    move/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 429
    move-wide/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_59

    .line 430
    move-object/from16 v12, p11

    :try_start_38
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 431
    move-object/from16 v13, p12

    :try_start_3d
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 432
    move-object/from16 v14, p0

    :try_start_42
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4f

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_4f
    move-exception v0

    goto :goto_8a

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_75
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_7a
    move-object/from16 v5, p4

    :goto_7c
    move/from16 v6, p5

    :goto_7e
    move-object/from16 v7, p6

    :goto_80
    move/from16 v8, p7

    :goto_82
    move/from16 v9, p8

    :goto_84
    move-wide/from16 v10, p9

    :goto_86
    move-object/from16 v12, p11

    :goto_88
    move-object/from16 v13, p12

    :goto_8a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v0
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrix"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 400
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_75

    .line 402
    move-object/from16 v4, p3

    :try_start_14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    .line 403
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6d

    .line 404
    move/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_69

    .line 405
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_65

    .line 406
    move/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_61

    .line 407
    move/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 408
    move-wide/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_59

    .line 409
    move-object/from16 v12, p11

    :try_start_38
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 410
    move-object/from16 v13, p12

    :try_start_3d
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 411
    move-object/from16 v14, p0

    :try_start_42
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4f

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    nop

    .line 416
    return-void

    .line 414
    :catchall_4f
    move-exception v0

    goto :goto_8a

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_75
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_7a
    move-object/from16 v5, p4

    :goto_7c
    move/from16 v6, p5

    :goto_7e
    move-object/from16 v7, p6

    :goto_80
    move/from16 v8, p7

    :goto_82
    move/from16 v9, p8

    :goto_84
    move-wide/from16 v10, p9

    :goto_86
    move-object/from16 v12, p11

    :goto_88
    move-object/from16 v13, p12

    :goto_8a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v0
.end method

.method public blacklist findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 442
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_75

    .line 444
    move/from16 v4, p3

    :try_start_14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    .line 445
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6d

    .line 446
    move/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_69

    .line 447
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_65

    .line 448
    move/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_61

    .line 449
    move/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 450
    move-wide/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_59

    .line 451
    move-object/from16 v12, p11

    :try_start_38
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 452
    move-object/from16 v13, p12

    :try_start_3d
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 453
    move-object/from16 v14, p0

    :try_start_42
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4f

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_4f
    move-exception v0

    goto :goto_8a

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_75
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p3

    :goto_7a
    move-object/from16 v5, p4

    :goto_7c
    move/from16 v6, p5

    :goto_7e
    move-object/from16 v7, p6

    :goto_80
    move/from16 v8, p7

    :goto_82
    move/from16 v9, p8

    :goto_84
    move-wide/from16 v10, p9

    :goto_86
    move-object/from16 v12, p11

    :goto_88
    move-object/from16 v13, p12

    :goto_8a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v0
.end method

.method public blacklist focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "bounds"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 463
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_75

    .line 465
    move/from16 v4, p3

    :try_start_14
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    .line 466
    const/4 v0, 0x0

    move-object/from16 v5, p4

    :try_start_1a
    invoke-virtual {v1, v5, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6d

    .line 467
    move/from16 v6, p5

    :try_start_1f
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_69

    .line 468
    move-object/from16 v7, p6

    :try_start_24
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_65

    .line 469
    move/from16 v8, p7

    :try_start_29
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_61

    .line 470
    move/from16 v9, p8

    :try_start_2e
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5d

    .line 471
    move-wide/from16 v10, p9

    :try_start_33
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_59

    .line 472
    move-object/from16 v12, p11

    :try_start_38
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_55

    .line 473
    move-object/from16 v13, p12

    :try_start_3d
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_51

    .line 474
    move-object/from16 v14, p0

    :try_start_42
    iget-object v0, v14, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4f

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_4f
    move-exception v0

    goto :goto_8a

    :catchall_51
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_55
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_59
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_61
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_82

    :catchall_65
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_80

    :catchall_69
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7c

    :catchall_71
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7a

    :catchall_75
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p3

    :goto_7a
    move-object/from16 v5, p4

    :goto_7c
    move/from16 v6, p5

    :goto_7e
    move-object/from16 v7, p6

    :goto_80
    move/from16 v8, p7

    :goto_82
    move/from16 v9, p8

    :goto_84
    move-wide/from16 v10, p9

    :goto_86
    move-object/from16 v12, p11

    :goto_88
    move-object/from16 v13, p12

    :goto_8a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    throw v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 373
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    return-object v0
.end method

.method public blacklist getWindowSurfaceInfo(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/view/accessibility/IWindowSurfaceInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 539
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 541
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    nop

    .line 546
    return-void

    .line 544
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw v1
.end method

.method public blacklist notifyOutsideTouch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    nop

    .line 520
    return-void

    .line 518
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw v1
.end method

.method public greylist-max-o performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 484
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 490
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 493
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_33

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    nop

    .line 498
    return-void

    .line 496
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw v1
.end method

.method public blacklist takeScreenshotOfWindow(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 9
    .param p1, "interactionId"    # I
    .param p2, "listener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 525
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 528
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 529
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    nop

    .line 534
    return-void

    .line 532
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw v1
.end method
