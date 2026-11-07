.class public abstract Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;
.source "IInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyImeVisibilityAsync:I = 0xf

.field static final blacklist TRANSACTION_createInputContentUriToken:I = 0x3

.field static final blacklist TRANSACTION_hideMySoftInput:I = 0x7

.field static final blacklist TRANSACTION_notifyUserActionAsync:I = 0xe

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromClient:I = 0xd

.field static final blacklist TRANSACTION_onStylusHandwritingReady:I = 0x10

.field static final blacklist TRANSACTION_reportFullscreenModeAsync:I = 0x4

.field static final blacklist TRANSACTION_reportStartInputAsync:I = 0x2

.field static final blacklist TRANSACTION_resetStylusHandwriting:I = 0x11

.field static final blacklist TRANSACTION_setHandwritingSurfaceNotTouchable:I = 0x13

.field static final blacklist TRANSACTION_setHandwritingTouchableRegion:I = 0x14

.field static final blacklist TRANSACTION_setImeWindowStatusAsync:I = 0x1

.field static final blacklist TRANSACTION_setInputMethod:I = 0x5

.field static final blacklist TRANSACTION_setInputMethodAndSubtype:I = 0x6

.field static final blacklist TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0xc

.field static final blacklist TRANSACTION_showMySoftInput:I = 0x8

.field static final blacklist TRANSACTION_switchKeyboardLayoutAsync:I = 0x12

.field static final blacklist TRANSACTION_switchToNextInputMethod:I = 0xb

.field static final blacklist TRANSACTION_switchToPreviousInputMethod:I = 0xa

.field static final blacklist TRANSACTION_updateStatusIconAsync:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_4

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-eqz v1, :cond_14

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    return-object v1

    .line 106
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 115
    packed-switch p0, :pswitch_data_50

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 195
    :pswitch_5
    const-string/jumbo v0, "setHandwritingTouchableRegion"

    return-object v0

    .line 191
    :pswitch_9
    const-string/jumbo v0, "setHandwritingSurfaceNotTouchable"

    return-object v0

    .line 187
    :pswitch_d
    const-string/jumbo v0, "switchKeyboardLayoutAsync"

    return-object v0

    .line 183
    :pswitch_11
    const-string/jumbo v0, "resetStylusHandwriting"

    return-object v0

    .line 179
    :pswitch_15
    const-string v0, "onStylusHandwritingReady"

    return-object v0

    .line 175
    :pswitch_18
    const-string v0, "applyImeVisibilityAsync"

    return-object v0

    .line 171
    :pswitch_1b
    const-string v0, "notifyUserActionAsync"

    return-object v0

    .line 167
    :pswitch_1e
    const-string v0, "onImeSwitchButtonClickFromClient"

    return-object v0

    .line 163
    :pswitch_21
    const-string/jumbo v0, "shouldOfferSwitchingToNextInputMethod"

    return-object v0

    .line 159
    :pswitch_25
    const-string/jumbo v0, "switchToNextInputMethod"

    return-object v0

    .line 155
    :pswitch_29
    const-string/jumbo v0, "switchToPreviousInputMethod"

    return-object v0

    .line 151
    :pswitch_2d
    const-string/jumbo v0, "updateStatusIconAsync"

    return-object v0

    .line 147
    :pswitch_31
    const-string/jumbo v0, "showMySoftInput"

    return-object v0

    .line 143
    :pswitch_35
    const-string v0, "hideMySoftInput"

    return-object v0

    .line 139
    :pswitch_38
    const-string/jumbo v0, "setInputMethodAndSubtype"

    return-object v0

    .line 135
    :pswitch_3c
    const-string/jumbo v0, "setInputMethod"

    return-object v0

    .line 131
    :pswitch_40
    const-string/jumbo v0, "reportFullscreenModeAsync"

    return-object v0

    .line 127
    :pswitch_44
    const-string v0, "createInputContentUriToken"

    return-object v0

    .line 123
    :pswitch_47
    const-string/jumbo v0, "reportStartInputAsync"

    return-object v0

    .line 119
    :pswitch_4b
    const-string/jumbo v0, "setImeWindowStatusAsync"

    return-object v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 110
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 713
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 206
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 210
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    .line 211
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 212
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 215
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return v1

    .line 218
    :cond_16
    packed-switch p1, :pswitch_data_17e

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 406
    :pswitch_1e
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 407
    .local v2, "_arg0":Landroid/graphics/Region;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 409
    goto/16 :goto_17c

    .line 398
    .end local v2    # "_arg0":Landroid/graphics/Region;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 399
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setHandwritingSurfaceNotTouchable(Z)V

    .line 401
    goto/16 :goto_17c

    .line 390
    .end local v2    # "_arg0":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchKeyboardLayoutAsync(I)V

    .line 393
    goto/16 :goto_17c

    .line 382
    .end local v2    # "_arg0":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->resetStylusHandwriting(I)V

    .line 385
    goto/16 :goto_17c

    .line 372
    .end local v2    # "_arg0":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onStylusHandwritingReady(II)V

    .line 377
    goto/16 :goto_17c

    .line 360
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 364
    .local v3, "_arg1":Z
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 365
    .local v4, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 367
    goto/16 :goto_17c

    .line 354
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_7a
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->notifyUserActionAsync()V

    .line 355
    goto/16 :goto_17c

    .line 347
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onImeSwitchButtonClickFromClient(I)V

    .line 350
    goto/16 :goto_17c

    .line 339
    .end local v2    # "_arg0":I
    :pswitch_8b
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 340
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 342
    goto/16 :goto_17c

    .line 329
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 331
    .local v2, "_arg0":Z
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 332
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 334
    goto/16 :goto_17c

    .line 321
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_af
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 322
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 324
    goto/16 :goto_17c

    .line 311
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 316
    goto/16 :goto_17c

    .line 297
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_cf
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 299
    .local v2, "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .local v4, "_arg2":I
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 304
    .local v5, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    .line 306
    goto/16 :goto_17c

    .line 283
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_ef
    sget-object v2, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 285
    .restart local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 289
    .restart local v4    # "_arg2":I
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 290
    .restart local v5    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    .line 292
    goto :goto_17c

    .line 271
    .end local v2    # "_arg0":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 275
    .local v3, "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 276
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 278
    goto :goto_17c

    .line 261
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 264
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 266
    goto :goto_17c

    .line 253
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 254
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportFullscreenModeAsync(Z)V

    .line 256
    goto :goto_17c

    .line 241
    .end local v2    # "_arg0":Z
    :pswitch_147
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 243
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 246
    .restart local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 248
    goto :goto_17c

    .line 233
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 236
    goto :goto_17c

    .line 223
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setImeWindowStatusAsync(II)V

    .line 228
    nop

    .line 416
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_17c
    return v1

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_16d
        :pswitch_162
        :pswitch_147
        :pswitch_13c
        :pswitch_129
        :pswitch_10e
        :pswitch_ef
        :pswitch_cf
        :pswitch_bf
        :pswitch_af
        :pswitch_9b
        :pswitch_8b
        :pswitch_7f
        :pswitch_7a
        :pswitch_62
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
