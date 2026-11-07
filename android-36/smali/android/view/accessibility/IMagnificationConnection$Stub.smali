.class public abstract Landroid/view/accessibility/IMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableWindowMagnification:I = 0x3

.field static final blacklist TRANSACTION_enableWindowMagnification:I = 0x1

.field static final blacklist TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final blacklist TRANSACTION_moveWindowMagnifierToPosition:I = 0x5

.field static final blacklist TRANSACTION_onFullscreenMagnificationActivationChanged:I = 0xb

.field static final blacklist TRANSACTION_onUserMagnificationScaleChanged:I = 0xa

.field static final blacklist TRANSACTION_removeMagnificationButton:I = 0x7

.field static final blacklist TRANSACTION_removeMagnificationSettingsPanel:I = 0x8

.field static final blacklist TRANSACTION_setConnectionCallback:I = 0x9

.field static final blacklist TRANSACTION_setScaleForWindowMagnification:I = 0x2

.field static final blacklist TRANSACTION_showMagnificationButton:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_4
    const-string v0, "android.view.accessibility.IMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IMagnificationConnection;

    if-eqz v1, :cond_14

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IMagnificationConnection;

    return-object v1

    .line 154
    :cond_14
    new-instance v1, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_2c

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_5
    const-string v0, "onFullscreenMagnificationActivationChanged"

    return-object v0

    .line 203
    :pswitch_8
    const-string v0, "onUserMagnificationScaleChanged"

    return-object v0

    .line 199
    :pswitch_b
    const-string/jumbo v0, "setConnectionCallback"

    return-object v0

    .line 195
    :pswitch_f
    const-string/jumbo v0, "removeMagnificationSettingsPanel"

    return-object v0

    .line 191
    :pswitch_13
    const-string/jumbo v0, "removeMagnificationButton"

    return-object v0

    .line 187
    :pswitch_17
    const-string/jumbo v0, "showMagnificationButton"

    return-object v0

    .line 183
    :pswitch_1b
    const-string v0, "moveWindowMagnifierToPosition"

    return-object v0

    .line 179
    :pswitch_1e
    const-string v0, "moveWindowMagnifier"

    return-object v0

    .line 175
    :pswitch_21
    const-string v0, "disableWindowMagnification"

    return-object v0

    .line 171
    :pswitch_24
    const-string/jumbo v0, "setScaleForWindowMagnification"

    return-object v0

    .line 167
    :pswitch_28
    const-string v0, "enableWindowMagnification"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 613
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 218
    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 222
    const-string v8, "android.view.accessibility.IMagnificationConnection"

    .line 223
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 224
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 227
    move-object v10, p3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v9

    .line 230
    :cond_17
    move-object v10, p3

    packed-switch p1, :pswitch_data_f6

    .line 356
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 347
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 350
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onFullscreenMagnificationActivationChanged(IZ)V

    .line 352
    goto/16 :goto_f4

    .line 335
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 340
    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->onUserMagnificationScaleChanged(IIF)V

    .line 342
    goto/16 :goto_f4

    .line 327
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnectionCallback;

    move-result-object v1

    .line 328
    .local v1, "_arg0":Landroid/view/accessibility/IMagnificationConnectionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V

    .line 330
    goto/16 :goto_f4

    .line 319
    .end local v1    # "_arg0":Landroid/view/accessibility/IMagnificationConnectionCallback;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationSettingsPanel(I)V

    .line 322
    goto/16 :goto_f4

    .line 311
    .end local v1    # "_arg0":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->removeMagnificationButton(I)V

    .line 314
    goto/16 :goto_f4

    .line 301
    .end local v1    # "_arg0":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->showMagnificationButton(II)V

    .line 306
    goto/16 :goto_f4

    .line 287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 291
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 293
    .restart local v3    # "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v4

    .line 294
    .local v4, "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 296
    goto :goto_f4

    .line 275
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 279
    .restart local v2    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 280
    .restart local v3    # "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    .line 282
    goto :goto_f4

    .line 265
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v2

    .line 268
    .local v2, "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 270
    goto :goto_f4

    .line 255
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 258
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IMagnificationConnection$Stub;->setScaleForWindowMagnification(IF)V

    .line 260
    goto :goto_f4

    .line 235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 239
    .restart local v2    # "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 241
    .restart local v3    # "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 243
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 245
    .local v5, "_arg4":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 247
    .local v6, "_arg5":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v7

    .line 248
    .local v7, "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/IMagnificationConnection$Stub;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 250
    nop

    .line 359
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":F
    .end local v6    # "_arg5":F
    .end local v7    # "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :goto_f4
    return v9

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_bd
        :pswitch_aa
        :pswitch_97
        :pswitch_7c
        :pswitch_6c
        :pswitch_60
        :pswitch_54
        :pswitch_44
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
