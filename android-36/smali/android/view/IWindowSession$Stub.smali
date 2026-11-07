.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0xd

.field static final blacklist TRANSACTION_cancelDraw:I = 0x28

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x27

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0xe

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0xf

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0xb

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0x9

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x1b

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x25

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x18

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x24

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x22

.field static final blacklist TRANSACTION_moveFocusToAdjacentWindow:I = 0x29

.field static final blacklist TRANSACTION_notifyImeWindowVisibilityChangedFromClient:I = 0x2a

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x17

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x7

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xa

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x19

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final blacklist TRANSACTION_relayoutAsync:I = 0x6

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final blacklist TRANSACTION_reportDecorViewGestureInterceptionChanged:I = 0x20

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0xc

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x21

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x15

.field static final greylist-max-o TRANSACTION_setInsets:I = 0x8

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x26

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x12

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x14

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x10

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x11

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x1a

.field static final blacklist TRANSACTION_updateAnimatingTypes:I = 0x1e

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x23

.field static final blacklist TRANSACTION_updateRequestedVisibleTypes:I = 0x1d

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x1c

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x16

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 360
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 368
    if-nez p0, :cond_4

    .line 369
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_4
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 372
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    .line 373
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 375
    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 384
    packed-switch p0, :pswitch_data_98

    .line 556
    const/4 v0, 0x0

    return-object v0

    .line 552
    :pswitch_5
    const-string v0, "notifyImeWindowVisibilityChangedFromClient"

    return-object v0

    .line 548
    :pswitch_8
    const-string v0, "moveFocusToAdjacentWindow"

    return-object v0

    .line 544
    :pswitch_b
    const-string v0, "cancelDraw"

    return-object v0

    .line 540
    :pswitch_e
    const-string v0, "clearTouchableRegion"

    return-object v0

    .line 536
    :pswitch_11
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    .line 532
    :pswitch_15
    const-string v0, "generateDisplayHash"

    return-object v0

    .line 528
    :pswitch_18
    const-string v0, "grantEmbeddedWindowFocus"

    return-object v0

    .line 524
    :pswitch_1b
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    .line 520
    :pswitch_1f
    const-string v0, "grantInputChannel"

    return-object v0

    .line 516
    :pswitch_22
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    .line 512
    :pswitch_26
    const-string/jumbo v0, "reportDecorViewGestureInterceptionChanged"

    return-object v0

    .line 508
    :pswitch_2a
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    .line 504
    :pswitch_2e
    const-string/jumbo v0, "updateAnimatingTypes"

    return-object v0

    .line 500
    :pswitch_32
    const-string/jumbo v0, "updateRequestedVisibleTypes"

    return-object v0

    .line 496
    :pswitch_36
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    .line 492
    :pswitch_3a
    const-string v0, "finishMovingTask"

    return-object v0

    .line 488
    :pswitch_3d
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    .line 484
    :pswitch_41
    const-string v0, "pokeDrawLock"

    return-object v0

    .line 480
    :pswitch_44
    const-string v0, "getWindowId"

    return-object v0

    .line 476
    :pswitch_47
    const-string v0, "onRectangleOnScreenRequested"

    return-object v0

    .line 472
    :pswitch_4a
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    .line 468
    :pswitch_4e
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    .line 464
    :pswitch_52
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    .line 460
    :pswitch_56
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    .line 456
    :pswitch_5a
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    .line 452
    :pswitch_5e
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    .line 448
    :pswitch_62
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    .line 444
    :pswitch_66
    const-string v0, "dragRecipientExited"

    return-object v0

    .line 440
    :pswitch_69
    const-string v0, "dragRecipientEntered"

    return-object v0

    .line 436
    :pswitch_6c
    const-string v0, "cancelDragAndDrop"

    return-object v0

    .line 432
    :pswitch_6f
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    .line 428
    :pswitch_73
    const-string v0, "dropForAccessibility"

    return-object v0

    .line 424
    :pswitch_76
    const-string v0, "performDrag"

    return-object v0

    .line 420
    :pswitch_79
    const-string v0, "finishDrawing"

    return-object v0

    .line 416
    :pswitch_7c
    const-string/jumbo v0, "setInsets"

    return-object v0

    .line 412
    :pswitch_80
    const-string v0, "outOfMemory"

    return-object v0

    .line 408
    :pswitch_83
    const-string/jumbo v0, "relayoutAsync"

    return-object v0

    .line 404
    :pswitch_87
    const-string/jumbo v0, "relayout"

    return-object v0

    .line 400
    :pswitch_8b
    const-string/jumbo v0, "remove"

    return-object v0

    .line 396
    :pswitch_8f
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    .line 392
    :pswitch_92
    const-string v0, "addToDisplayAsUser"

    return-object v0

    .line 388
    :pswitch_95
    const-string v0, "addToDisplay"

    return-object v0

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 379
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2188
    const/16 v0, 0x29

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 563
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v8, "android.view.IWindowSession"

    .line 568
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v13, v9, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 569
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 572
    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    return v9

    .line 575
    :cond_1e
    const-string v1, "Array too large: "

    const v2, 0xf4240

    packed-switch v13, :pswitch_data_672

    .line 1204
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1193
    :pswitch_2b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1195
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1197
    .local v2, "_arg1":Z
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1198
    .local v3, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1200
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1181
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_4a
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1183
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1184
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v3

    .line 1186
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1188
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1171
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1172
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDraw(Landroid/view/IWindow;)Z

    move-result v2

    .line 1174
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1176
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1162
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_result":Z
    :pswitch_82
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1163
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1165
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1152
    .end local v1    # "_arg0":Landroid/view/IWindow;
    :pswitch_98
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1154
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1155
    .local v2, "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1157
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1138
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    :pswitch_b3
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1140
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1142
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 1145
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1147
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1125
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_da
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1127
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/InputTransferToken;

    .line 1129
    .local v2, "_arg1":Landroid/window/InputTransferToken;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1130
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    .line 1132
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1105
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/window/InputTransferToken;
    .end local v3    # "_arg2":Z
    :pswitch_fc
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1107
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1109
    .local v2, "_arg1":I
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 1111
    .local v3, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1113
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1115
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1117
    .local v6, "_arg5":I
    sget-object v7, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .line 1118
    .local v7, "_arg6":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    .line 1120
    move-object/from16 v16, v8

    move v13, v9

    goto/16 :goto_658

    .line 1073
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/SurfaceControl;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/graphics/Region;
    :pswitch_12b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    .local v1, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/SurfaceControl;

    .line 1077
    .local v2, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1079
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/window/InputTransferToken;

    .line 1081
    .local v4, "_arg3":Landroid/window/InputTransferToken;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1083
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1085
    .restart local v6    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1087
    .local v7, "_arg6":I
    move-object v0, v8

    .end local v8    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1089
    .local v8, "_arg7":I
    move v10, v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1091
    .local v9, "_arg8":Landroid/os/IBinder;
    sget-object v11, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/InputTransferToken;

    .line 1093
    .local v11, "_arg9":Landroid/window/InputTransferToken;
    move v12, v10

    move-object v10, v11

    .end local v11    # "_arg9":Landroid/window/InputTransferToken;
    .local v10, "_arg9":Landroid/window/InputTransferToken;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1095
    .local v11, "_arg10":Ljava/lang/String;
    new-instance v16, Landroid/view/InputChannel;

    invoke-direct/range {v16 .. v16}, Landroid/view/InputChannel;-><init>()V

    .line 1096
    .local v16, "_arg11":Landroid/view/InputChannel;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    move v13, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "descriptor":Ljava/lang/String;
    .local v12, "_arg11":Landroid/view/InputChannel;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1098
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1100
    goto/16 :goto_658

    .line 1061
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/SurfaceControl;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/window/InputTransferToken;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v9    # "_arg8":Landroid/os/IBinder;
    .end local v10    # "_arg9":Landroid/window/InputTransferToken;
    .end local v11    # "_arg10":Ljava/lang/String;
    .end local v12    # "_arg11":Landroid/view/InputChannel;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_183
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1063
    .local v1, "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1065
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1066
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 1068
    goto/16 :goto_658

    .line 1051
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_1a2
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1053
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1054
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V

    .line 1056
    goto/16 :goto_658

    .line 1041
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_1b9
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1043
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1044
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 1046
    goto/16 :goto_658

    .line 1029
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_1d2
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1031
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1033
    .local v2, "_arg1":I
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1034
    .local v3, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1036
    goto/16 :goto_658

    .line 1017
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_1f1
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1019
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1021
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 1022
    .restart local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1024
    goto/16 :goto_658

    .line 1007
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_210
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1009
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 1010
    .local v2, "_arg1":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 1012
    goto/16 :goto_658

    .line 999
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/graphics/Region;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_22b
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 1000
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 1002
    goto/16 :goto_658

    .line 985
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_23e
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 987
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 989
    .local v2, "_arg1":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 990
    .local v3, "_arg2":F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v4

    .line 992
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 994
    goto/16 :goto_658

    .line 976
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_260
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 977
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 979
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    goto/16 :goto_658

    .line 966
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_272
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 967
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v2

    .line 969
    .local v2, "_result":Landroid/view/IWindowId;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 971
    goto/16 :goto_658

    .line 956
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/view/IWindowId;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_288
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 958
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 959
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 961
    goto/16 :goto_658

    .line 946
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_29f
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 948
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 949
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 951
    goto/16 :goto_658

    .line 926
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_2b6
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 928
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 932
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 934
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 936
    .restart local v5    # "_arg4":I
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 938
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 939
    .local v7, "_arg6":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 941
    goto/16 :goto_658

    .line 914
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_2e1
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 916
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 918
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 919
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 921
    goto/16 :goto_658

    .line 906
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_2f8
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 907
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 909
    goto/16 :goto_658

    .line 896
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_307
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 898
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 899
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 901
    goto/16 :goto_658

    .line 886
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_31a
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 888
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 889
    .local v2, "_arg1":F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 891
    goto/16 :goto_658

    .line 870
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":F
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_32d
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 872
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 874
    .restart local v2    # "_arg1":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 876
    .local v3, "_arg2":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 878
    .local v4, "_arg3":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 879
    .local v5, "_arg4":F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 881
    goto/16 :goto_658

    .line 862
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":F
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_34c
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 863
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 865
    goto/16 :goto_658

    .line 854
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_35f
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 855
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 857
    goto/16 :goto_658

    .line 844
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_372
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 846
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 847
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 849
    goto/16 :goto_658

    .line 834
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_385
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 836
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 837
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 839
    goto/16 :goto_658

    .line 820
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_39c
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 822
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v4

    .line 827
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    goto/16 :goto_658

    .line 790
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_3be
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 792
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 796
    .local v3, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 798
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 800
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 802
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 804
    .local v7, "_arg6":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 806
    .local v8, "_arg7":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 808
    .local v9, "_arg8":F
    invoke-virtual {v14}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 810
    .local v10, "_arg9":F
    sget-object v11, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipData;

    .line 811
    .local v11, "_arg10":Landroid/content/ClipData;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v12

    .line 813
    .local v12, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 815
    goto/16 :goto_658

    .line 778
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/SurfaceControl;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":F
    .end local v9    # "_arg8":F
    .end local v10    # "_arg9":F
    .end local v11    # "_arg10":Landroid/content/ClipData;
    .end local v12    # "_result":Landroid/os/IBinder;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_408
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 780
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 782
    .local v2, "_arg1":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 783
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 785
    goto/16 :goto_658

    .line 762
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "_arg2":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_427
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 764
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 766
    .local v2, "_arg1":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 768
    .local v3, "_arg2":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 770
    .local v4, "_arg3":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .line 771
    .local v5, "_arg4":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 773
    goto/16 :goto_658

    .line 752
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Region;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_456
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 753
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    .line 755
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 757
    goto/16 :goto_658

    .line 730
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_result":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_470
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 732
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 734
    .local v2, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 736
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 738
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 742
    .restart local v6    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 744
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 745
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    .line 747
    goto/16 :goto_658

    .line 703
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_4a3
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 705
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 707
    .restart local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 709
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 711
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 713
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 715
    .restart local v6    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 717
    .restart local v7    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 719
    .local v8, "_arg7":I
    new-instance v9, Landroid/view/WindowRelayoutResult;

    invoke-direct {v9}, Landroid/view/WindowRelayoutResult;-><init>()V

    .line 720
    .local v9, "_arg8":Landroid/view/WindowRelayoutResult;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    move-result v10

    .line 722
    .local v10, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    invoke-virtual {v15, v9, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 725
    goto/16 :goto_658

    .line 694
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v9    # "_arg8":Landroid/view/WindowRelayoutResult;
    .end local v10    # "_result":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_4e8
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 695
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->remove(Landroid/os/IBinder;)V

    .line 697
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_658

    .line 662
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v8    # "descriptor":Ljava/lang/String;
    :pswitch_4fa
    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 664
    .local v3, "_arg0":Landroid/view/IWindow;
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 666
    .local v4, "_arg1":Landroid/view/WindowManager$LayoutParams;
    move-object v5, v1

    move-object v1, v3

    .end local v3    # "_arg0":Landroid/view/IWindow;
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    .local v3, "_arg2":I
    move-object v6, v4

    .end local v4    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v6, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 670
    .local v4, "_arg3":I
    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    .line 672
    .local v7, "_arg4":Landroid/view/InsetsState;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 674
    .local v8, "_arg5":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 675
    .local v9, "_arg6_length":I
    if-gt v9, v2, :cond_54c

    .line 677
    if-gez v9, :cond_52c

    .line 678
    const/4 v2, 0x0

    .local v2, "_arg6":[F
    goto :goto_52e

    .line 680
    .end local v2    # "_arg6":[F
    :cond_52c
    new-array v2, v9, [F

    .line 682
    .restart local v2    # "_arg6":[F
    :goto_52e
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    move-object v5, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .local v2, "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v5, "_arg4":Landroid/view/InsetsState;
    .local v6, "_arg5":Landroid/graphics/Rect;
    .local v7, "_arg6":[F
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I

    move-result v8

    .line 684
    move-object v0, v7

    move-object v7, v5

    .end local v5    # "_arg4":Landroid/view/InsetsState;
    .local v0, "_arg6":[F
    .local v7, "_arg4":Landroid/view/InsetsState;
    .local v8, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    invoke-virtual {v15, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 687
    invoke-virtual {v15, v6, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 688
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 689
    goto/16 :goto_658

    .line 676
    .end local v0    # "_arg6":[F
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v6, "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v8, "_arg5":Landroid/graphics/Rect;
    :cond_54c
    move-object v2, v6

    move-object v6, v8

    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v6, "_arg5":Landroid/graphics/Rect;
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg4":Landroid/view/InsetsState;
    .end local v9    # "_arg6_length":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_565
    move-object v5, v1

    move-object/from16 v16, v8

    move v13, v9

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 624
    .local v0, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 628
    .restart local v4    # "_arg3":I
    move-object v6, v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 630
    .local v5, "_arg4":I
    move-object v7, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 632
    .local v6, "_arg5":I
    new-instance v8, Landroid/view/InputChannel;

    invoke-direct {v8}, Landroid/view/InputChannel;-><init>()V

    .line 634
    .local v8, "_arg6":Landroid/view/InputChannel;
    new-instance v9, Landroid/view/InsetsState;

    invoke-direct {v9}, Landroid/view/InsetsState;-><init>()V

    .line 636
    .local v9, "_arg7":Landroid/view/InsetsState;
    new-instance v10, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v10}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 638
    .local v10, "_arg8":Landroid/view/InsetsSourceControl$Array;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 640
    .local v11, "_arg9":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 641
    .local v12, "_arg10_length":I
    if-gt v12, v2, :cond_5d8

    .line 643
    if-gez v12, :cond_5a9

    .line 644
    const/4 v2, 0x0

    .local v2, "_arg10":[F
    goto :goto_5ab

    .line 646
    .end local v2    # "_arg10":[F
    :cond_5a9
    new-array v2, v12, [F

    .line 648
    .restart local v2    # "_arg10":[F
    :goto_5ab
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v2

    move-object v2, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v2, "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v7, "_arg6":Landroid/view/InputChannel;
    .local v8, "_arg7":Landroid/view/InsetsState;
    .local v9, "_arg8":Landroid/view/InsetsSourceControl$Array;
    .local v10, "_arg9":Landroid/graphics/Rect;
    .local v11, "_arg10":[F
    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v13

    .line 650
    move-object v0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    .end local v7    # "_arg6":Landroid/view/InputChannel;
    .local v0, "_arg10":[F
    .local v8, "_arg6":Landroid/view/InputChannel;
    .local v9, "_arg7":Landroid/view/InsetsState;
    .local v10, "_arg8":Landroid/view/InsetsSourceControl$Array;
    .local v11, "_arg9":Landroid/graphics/Rect;
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v7, 0x1

    invoke-virtual {v15, v8, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 653
    invoke-virtual {v15, v9, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 654
    invoke-virtual {v15, v10, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 655
    invoke-virtual {v15, v11, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 656
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 657
    const/4 v13, 0x1

    goto/16 :goto_658

    .line 642
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "_result":I
    .local v0, "_arg1":Landroid/view/WindowManager$LayoutParams;
    :cond_5d8
    move-object v2, v0

    .end local v0    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v9    # "_arg7":Landroid/view/InsetsState;
    .end local v10    # "_arg8":Landroid/view/InsetsSourceControl$Array;
    .end local v11    # "_arg9":Landroid/graphics/Rect;
    .end local v12    # "_arg10_length":I
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v8, "descriptor":Ljava/lang/String;
    :pswitch_5f0
    move-object v7, v1

    move-object/from16 v16, v8

    .end local v8    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 582
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 584
    .restart local v0    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 586
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 588
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 590
    .restart local v5    # "_arg4":I
    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    .line 592
    .local v6, "_arg5":Landroid/view/InputChannel;
    new-instance v8, Landroid/view/InsetsState;

    invoke-direct {v8}, Landroid/view/InsetsState;-><init>()V

    .line 594
    .local v8, "_arg6":Landroid/view/InsetsState;
    new-instance v9, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v9}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 596
    .local v9, "_arg7":Landroid/view/InsetsSourceControl$Array;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 598
    .local v10, "_arg8":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 599
    .local v11, "_arg9_length":I
    if-gt v11, v2, :cond_659

    .line 601
    if-gez v11, :cond_62d

    .line 602
    const/4 v2, 0x0

    .local v2, "_arg9":[F
    goto :goto_62f

    .line 604
    .end local v2    # "_arg9":[F
    :cond_62d
    new-array v2, v11, [F

    .line 606
    .restart local v2    # "_arg9":[F
    :goto_62f
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v2

    move-object v2, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v2, "_arg1":Landroid/view/WindowManager$LayoutParams;
    .local v7, "_arg6":Landroid/view/InsetsState;
    .local v8, "_arg7":Landroid/view/InsetsSourceControl$Array;
    .local v9, "_arg8":Landroid/graphics/Rect;
    .local v10, "_arg9":[F
    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v12

    .line 608
    move-object v0, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    .end local v7    # "_arg6":Landroid/view/InsetsState;
    .local v0, "_arg9":[F
    .local v8, "_arg6":Landroid/view/InsetsState;
    .local v9, "_arg7":Landroid/view/InsetsSourceControl$Array;
    .local v10, "_arg8":Landroid/graphics/Rect;
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v13, 0x1

    invoke-virtual {v15, v6, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 611
    invoke-virtual {v15, v8, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 612
    invoke-virtual {v15, v9, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 613
    invoke-virtual {v15, v10, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 614
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 615
    nop

    .line 1207
    .end local v0    # "_arg9":[F
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/view/InputChannel;
    .end local v8    # "_arg6":Landroid/view/InsetsState;
    .end local v9    # "_arg7":Landroid/view/InsetsSourceControl$Array;
    .end local v10    # "_arg8":Landroid/graphics/Rect;
    .end local v11    # "_arg9_length":I
    .end local v12    # "_result":I
    :goto_658
    return v13

    .line 600
    .local v0, "_arg1":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":Landroid/view/InputChannel;
    .restart local v8    # "_arg6":Landroid/view/InsetsState;
    .restart local v9    # "_arg7":Landroid/view/InsetsSourceControl$Array;
    .restart local v10    # "_arg8":Landroid/graphics/Rect;
    .restart local v11    # "_arg9_length":I
    :cond_659
    move-object v2, v0

    .end local v0    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_672
    .packed-switch 0x1
        :pswitch_5f0
        :pswitch_565
        :pswitch_4fa
        :pswitch_4e8
        :pswitch_4a3
        :pswitch_470
        :pswitch_456
        :pswitch_427
        :pswitch_408
        :pswitch_3be
        :pswitch_39c
        :pswitch_385
        :pswitch_372
        :pswitch_35f
        :pswitch_34c
        :pswitch_32d
        :pswitch_31a
        :pswitch_307
        :pswitch_2f8
        :pswitch_2e1
        :pswitch_2b6
        :pswitch_29f
        :pswitch_288
        :pswitch_272
        :pswitch_260
        :pswitch_23e
        :pswitch_22b
        :pswitch_210
        :pswitch_1f1
        :pswitch_1d2
        :pswitch_1b9
        :pswitch_1a2
        :pswitch_183
        :pswitch_12b
        :pswitch_fc
        :pswitch_da
        :pswitch_b3
        :pswitch_98
        :pswitch_82
        :pswitch_68
        :pswitch_4a
        :pswitch_2b
    .end packed-switch
.end method
