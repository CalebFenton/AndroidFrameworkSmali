.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToWindow:I = 0xb

.field static final blacklist TRANSACTION_clearAccessibilityFocus:I = 0x7

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x4

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x5

.field static final blacklist TRANSACTION_getWindowSurfaceInfo:I = 0xa

.field static final blacklist TRANSACTION_notifyOutsideTouch:I = 0x8

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x6

.field static final blacklist TRANSACTION_takeScreenshotOfWindow:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_28

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string v0, "attachAccessibilityOverlayToWindow"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "getWindowSurfaceInfo"

    return-object v0

    .line 126
    :pswitch_b
    const-string/jumbo v0, "takeScreenshotOfWindow"

    return-object v0

    .line 122
    :pswitch_f
    const-string v0, "notifyOutsideTouch"

    return-object v0

    .line 118
    :pswitch_12
    const-string v0, "clearAccessibilityFocus"

    return-object v0

    .line 114
    :pswitch_15
    const-string v0, "performAccessibilityAction"

    return-object v0

    .line 110
    :pswitch_18
    const-string v0, "focusSearch"

    return-object v0

    .line 106
    :pswitch_1b
    const-string v0, "findFocus"

    return-object v0

    .line 102
    :pswitch_1e
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    .line 98
    :pswitch_21
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    .line 94
    :pswitch_24
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 578
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.view.accessibility.IAccessibilityInteractionConnection"

    .line 150
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_13

    const v1, 0xffffff

    if-gt v13, v1, :cond_13

    .line 151
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_13
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 154
    move-object/from16 v12, p3

    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v11

    .line 157
    :cond_1e
    move-object/from16 v12, p3

    packed-switch v13, :pswitch_data_204

    .line 355
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 344
    :pswitch_28
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 346
    .local v1, "_arg0":Landroid/view/SurfaceControl;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v3

    .line 349
    .local v3, "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachAccessibilityOverlayToWindow(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 351
    move/from16 v16, v11

    goto/16 :goto_203

    .line 336
    .end local v1    # "_arg0":Landroid/view/SurfaceControl;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :pswitch_46
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowSurfaceInfoCallback;

    move-result-object v1

    .line 337
    .local v1, "_arg0":Landroid/view/accessibility/IWindowSurfaceInfoCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getWindowSurfaceInfo(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V

    .line 339
    move/from16 v16, v11

    goto/16 :goto_203

    .line 324
    .end local v1    # "_arg0":Landroid/view/accessibility/IWindowSurfaceInfoCallback;
    :pswitch_58
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .local v1, "_arg0":I
    sget-object v2, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 328
    .local v2, "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v3

    .line 329
    .restart local v3    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->takeScreenshotOfWindow(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 331
    move/from16 v16, v11

    goto/16 :goto_203

    .line 318
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/window/ScreenCapture$ScreenCaptureListener;
    .end local v3    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :pswitch_76
    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->notifyOutsideTouch()V

    .line 319
    move/from16 v16, v11

    goto/16 :goto_203

    .line 313
    :pswitch_7d
    invoke-virtual {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->clearAccessibilityFocus()V

    .line 314
    move/from16 v16, v11

    goto/16 :goto_203

    .line 292
    :pswitch_84
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 294
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 296
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 298
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    .local v5, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 302
    .local v6, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 304
    .local v7, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 306
    .local v8, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 307
    .local v9, "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 309
    move/from16 v16, v11

    goto/16 :goto_203

    .line 266
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":J
    :pswitch_b6
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 268
    .restart local v1    # "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg1":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 272
    .local v4, "_arg2":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .restart local v5    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 276
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 278
    .restart local v7    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 280
    .restart local v8    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 282
    .restart local v9    # "_arg7":J
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 284
    .local v0, "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 285
    .local v12, "_arg9":[F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    move/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg8":Landroid/view/MagnificationSpec;
    .local v11, "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 287
    goto/16 :goto_203

    .line 240
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/graphics/Region;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v12    # "_arg9":[F
    :pswitch_f8
    move/from16 v16, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 242
    .restart local v1    # "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3    # "_arg1":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 246
    .restart local v4    # "_arg2":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 248
    .restart local v5    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 250
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 252
    .restart local v7    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 254
    .restart local v8    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 256
    .restart local v9    # "_arg7":J
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/MagnificationSpec;

    .line 258
    .restart local v11    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 259
    .restart local v12    # "_arg9":[F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 261
    goto/16 :goto_203

    .line 214
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/graphics/Region;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v12    # "_arg9":[F
    :pswitch_13a
    move/from16 v16, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 216
    .restart local v1    # "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 220
    .restart local v4    # "_arg2":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 222
    .restart local v5    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 224
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 226
    .restart local v7    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 228
    .restart local v8    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 230
    .restart local v9    # "_arg7":J
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/MagnificationSpec;

    .line 232
    .restart local v11    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 233
    .restart local v12    # "_arg9":[F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 235
    goto/16 :goto_203

    .line 188
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/graphics/Region;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v12    # "_arg9":[F
    :pswitch_17c
    move/from16 v16, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 190
    .restart local v1    # "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Region;

    .line 194
    .restart local v4    # "_arg2":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 196
    .restart local v5    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v6

    .line 198
    .restart local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 200
    .restart local v7    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 202
    .restart local v8    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 204
    .restart local v9    # "_arg7":J
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/MagnificationSpec;

    .line 206
    .restart local v11    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v12

    .line 207
    .restart local v12    # "_arg9":[F
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 209
    goto :goto_203

    .line 162
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/graphics/Region;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":J
    .end local v11    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v12    # "_arg9":[F
    :pswitch_1bd
    move/from16 v16, v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 164
    .restart local v1    # "_arg0":J
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Region;

    .line 166
    .local v3, "_arg1":Landroid/graphics/Region;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 168
    .local v4, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 170
    .local v5, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 172
    .local v6, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .restart local v7    # "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    .local v8, "_arg6":J
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/MagnificationSpec;

    .line 178
    .local v10, "_arg7":Landroid/view/MagnificationSpec;
    invoke-virtual {v14}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v11

    .line 180
    .local v11, "_arg8":[F
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    .line 181
    .local v12, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 183
    nop

    .line 358
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/graphics/Region;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":J
    .end local v10    # "_arg7":Landroid/view/MagnificationSpec;
    .end local v11    # "_arg8":[F
    .end local v12    # "_arg9":Landroid/os/Bundle;
    :goto_203
    return v16

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_1bd
        :pswitch_17c
        :pswitch_13a
        :pswitch_f8
        :pswitch_b6
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_58
        :pswitch_46
        :pswitch_28
    .end packed-switch
.end method
