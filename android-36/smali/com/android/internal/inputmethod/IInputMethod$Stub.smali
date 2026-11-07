.class public abstract Lcom/android/internal/inputmethod/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindInput:I = 0x3

.field static final blacklist TRANSACTION_canStartStylusHandwriting:I = 0xd

.field static final blacklist TRANSACTION_changeInputMethodSubtype:I = 0xc

.field static final blacklist TRANSACTION_commitHandwritingDelegationTextIfAvailable:I = 0xf

.field static final blacklist TRANSACTION_createSession:I = 0x7

.field static final blacklist TRANSACTION_discardHandwritingDelegationText:I = 0x10

.field static final blacklist TRANSACTION_finishStylusHandwriting:I = 0x12

.field static final blacklist TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_initInkWindow:I = 0x11

.field static final blacklist TRANSACTION_initializeInternal:I = 0x1

.field static final blacklist TRANSACTION_onCreateInlineSuggestionsRequest:I = 0x2

.field static final blacklist TRANSACTION_onNavButtonFlagsChanged:I = 0x6

.field static final blacklist TRANSACTION_removeStylusHandwritingWindow:I = 0x13

.field static final blacklist TRANSACTION_setSessionEnabled:I = 0x8

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x14

.field static final blacklist TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startInput:I = 0x5

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0xe

.field static final blacklist TRANSACTION_unbindInput:I = 0x4

.field static final blacklist TRANSACTION_updateEditorToolType:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethod;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethod;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_4a

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 192
    :pswitch_5
    const-string/jumbo v0, "setStylusWindowIdleTimeoutForTest"

    return-object v0

    .line 188
    :pswitch_9
    const-string/jumbo v0, "removeStylusHandwritingWindow"

    return-object v0

    .line 184
    :pswitch_d
    const-string v0, "finishStylusHandwriting"

    return-object v0

    .line 180
    :pswitch_10
    const-string v0, "initInkWindow"

    return-object v0

    .line 176
    :pswitch_13
    const-string v0, "discardHandwritingDelegationText"

    return-object v0

    .line 172
    :pswitch_16
    const-string v0, "commitHandwritingDelegationTextIfAvailable"

    return-object v0

    .line 168
    :pswitch_19
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 164
    :pswitch_1d
    const-string v0, "canStartStylusHandwriting"

    return-object v0

    .line 160
    :pswitch_20
    const-string v0, "changeInputMethodSubtype"

    return-object v0

    .line 156
    :pswitch_23
    const-string/jumbo v0, "updateEditorToolType"

    return-object v0

    .line 152
    :pswitch_27
    const-string v0, "hideSoftInput"

    return-object v0

    .line 148
    :pswitch_2a
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 144
    :pswitch_2e
    const-string/jumbo v0, "setSessionEnabled"

    return-object v0

    .line 140
    :pswitch_32
    const-string v0, "createSession"

    return-object v0

    .line 136
    :pswitch_35
    const-string v0, "onNavButtonFlagsChanged"

    return-object v0

    .line 132
    :pswitch_38
    const-string/jumbo v0, "startInput"

    return-object v0

    .line 128
    :pswitch_3c
    const-string/jumbo v0, "unbindInput"

    return-object v0

    .line 124
    :pswitch_40
    const-string v0, "bindInput"

    return-object v0

    .line 120
    :pswitch_43
    const-string v0, "onCreateInlineSuggestionsRequest"

    return-object v0

    .line 116
    :pswitch_46
    const-string v0, "initializeInternal"

    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 681
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 203
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 207
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    .line 208
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return v1

    .line 215
    :cond_16
    packed-switch p1, :pswitch_data_158

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 382
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 383
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->setStylusWindowIdleTimeoutForTest(J)V

    .line 385
    goto/16 :goto_156

    .line 376
    .end local v2    # "_arg0":J
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->removeStylusHandwritingWindow()V

    .line 377
    goto/16 :goto_156

    .line 371
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->finishStylusHandwriting()V

    .line 372
    goto/16 :goto_156

    .line 366
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->initInkWindow()V

    .line 367
    goto/16 :goto_156

    .line 361
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->discardHandwritingDelegationText()V

    .line 362
    goto/16 :goto_156

    .line 356
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->commitHandwritingDelegationTextIfAvailable()V

    .line 357
    goto/16 :goto_156

    .line 345
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    .line 349
    .local v3, "_arg1":Landroid/view/InputChannel;
    sget-object v4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 350
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 352
    goto/16 :goto_156

    .line 331
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/InputChannel;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v3

    .line 335
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    sget-object v4, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 337
    .local v4, "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 338
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V

    .line 340
    goto/16 :goto_156

    .line 323
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local v4    # "_arg2":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local v5    # "_arg3":Z
    :pswitch_7d
    sget-object v2, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 324
    .local v2, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 326
    goto/16 :goto_156

    .line 315
    .end local v2    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->updateEditorToolType(I)V

    .line 318
    goto/16 :goto_156

    .line 301
    .end local v2    # "_arg0":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 303
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 305
    .local v3, "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 307
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 308
    .local v5, "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V

    .line 310
    goto/16 :goto_156

    .line 287
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/ResultReceiver;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 291
    .restart local v3    # "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 294
    .restart local v5    # "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V

    .line 296
    goto/16 :goto_156

    .line 277
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/ResultReceiver;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;

    move-result-object v2

    .line 279
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 280
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 282
    goto :goto_156

    .line 267
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IInputMethodSession;
    .end local v3    # "_arg1":Z
    :pswitch_ec
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 269
    .local v2, "_arg0":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    move-result-object v3

    .line 270
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IInputMethodSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V

    .line 272
    goto :goto_156

    .line 259
    .end local v2    # "_arg0":Landroid/view/InputChannel;
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IInputMethodSessionCallback;
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->onNavButtonFlagsChanged(I)V

    .line 262
    goto :goto_156

    .line 251
    .end local v2    # "_arg0":I
    :pswitch_10e
    sget-object v2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 252
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V

    .line 254
    goto :goto_156

    .line 245
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
    :pswitch_11d
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->unbindInput()V

    .line 246
    goto :goto_156

    .line 238
    :pswitch_121
    sget-object v2, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    .line 239
    .local v2, "_arg0":Landroid/view/inputmethod/InputBinding;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 241
    goto :goto_156

    .line 228
    .end local v2    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :pswitch_130
    sget-object v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 230
    .local v2, "_arg0":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v3

    .line 231
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    .line 233
    goto :goto_156

    .line 220
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    :pswitch_147
    sget-object v2, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 221
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IInputMethod$InitParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V

    .line 223
    nop

    .line 392
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IInputMethod$InitParams;
    :goto_156
    return v1

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_147
        :pswitch_130
        :pswitch_121
        :pswitch_11d
        :pswitch_10e
        :pswitch_103
        :pswitch_ec
        :pswitch_d9
        :pswitch_b9
        :pswitch_99
        :pswitch_8d
        :pswitch_7d
        :pswitch_5d
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
