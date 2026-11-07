.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final blacklist TRANSACTION_bindInput:I = 0x13

.field static final greylist-max-o TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final blacklist TRANSACTION_createImeSession:I = 0x11

.field static final greylist-max-o TRANSACTION_init:I = 0x1

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onAccessibilityButtonClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onFingerprintGesture:I = 0xd

.field static final greylist-max-o TRANSACTION_onGesture:I = 0x4

.field static final greylist-max-o TRANSACTION_onInterrupt:I = 0x3

.field static final greylist-max-o TRANSACTION_onKeyEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_onMagnificationChanged:I = 0x7

.field static final blacklist TRANSACTION_onMotionEvent:I = 0x8

.field static final greylist-max-o TRANSACTION_onPerformGestureResult:I = 0xb

.field static final greylist-max-o TRANSACTION_onSoftKeyboardShowModeChanged:I = 0xa

.field static final blacklist TRANSACTION_onSystemActionsChanged:I = 0x10

.field static final blacklist TRANSACTION_onTouchStateChanged:I = 0x9

.field static final blacklist TRANSACTION_setImeSessionEnabled:I = 0x12

.field static final blacklist TRANSACTION_startInput:I = 0x15

.field static final blacklist TRANSACTION_unbindInput:I = 0x14


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_14

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v1

    .line 110
    :cond_14
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 119
    packed-switch p0, :pswitch_data_56

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 203
    :pswitch_5
    const-string/jumbo v0, "startInput"

    return-object v0

    .line 199
    :pswitch_9
    const-string/jumbo v0, "unbindInput"

    return-object v0

    .line 195
    :pswitch_d
    const-string v0, "bindInput"

    return-object v0

    .line 191
    :pswitch_10
    const-string/jumbo v0, "setImeSessionEnabled"

    return-object v0

    .line 187
    :pswitch_14
    const-string v0, "createImeSession"

    return-object v0

    .line 183
    :pswitch_17
    const-string/jumbo v0, "onSystemActionsChanged"

    return-object v0

    .line 179
    :pswitch_1b
    const-string/jumbo v0, "onAccessibilityButtonAvailabilityChanged"

    return-object v0

    .line 175
    :pswitch_1f
    const-string/jumbo v0, "onAccessibilityButtonClicked"

    return-object v0

    .line 171
    :pswitch_23
    const-string/jumbo v0, "onFingerprintGesture"

    return-object v0

    .line 167
    :pswitch_27
    const-string/jumbo v0, "onFingerprintCapturingGesturesChanged"

    return-object v0

    .line 163
    :pswitch_2b
    const-string/jumbo v0, "onPerformGestureResult"

    return-object v0

    .line 159
    :pswitch_2f
    const-string/jumbo v0, "onSoftKeyboardShowModeChanged"

    return-object v0

    .line 155
    :pswitch_33
    const-string/jumbo v0, "onTouchStateChanged"

    return-object v0

    .line 151
    :pswitch_37
    const-string/jumbo v0, "onMotionEvent"

    return-object v0

    .line 147
    :pswitch_3b
    const-string/jumbo v0, "onMagnificationChanged"

    return-object v0

    .line 143
    :pswitch_3f
    const-string/jumbo v0, "onKeyEvent"

    return-object v0

    .line 139
    :pswitch_43
    const-string v0, "clearAccessibilityCache"

    return-object v0

    .line 135
    :pswitch_46
    const-string/jumbo v0, "onGesture"

    return-object v0

    .line 131
    :pswitch_4a
    const-string/jumbo v0, "onInterrupt"

    return-object v0

    .line 127
    :pswitch_4e
    const-string/jumbo v0, "onAccessibilityEvent"

    return-object v0

    .line 123
    :pswitch_52
    const-string/jumbo v0, "init"

    return-object v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 710
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 214
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const-string v0, "android.accessibilityservice.IAccessibilityServiceClient"

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
    packed-switch p1, :pswitch_data_148

    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 394
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v2

    .line 396
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 398
    .local v3, "_arg1":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 399
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 401
    goto/16 :goto_147

    .line 388
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v3    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "_arg2":Z
    :pswitch_3a
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->unbindInput()V

    .line 389
    goto/16 :goto_147

    .line 383
    :pswitch_3f
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->bindInput()V

    .line 384
    goto/16 :goto_147

    .line 374
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move-result-object v2

    .line 376
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 377
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    .line 379
    goto/16 :goto_147

    .line 366
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .end local v3    # "_arg1":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    move-result-object v2

    .line 367
    .local v2, "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 369
    goto/16 :goto_147

    .line 360
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    :pswitch_68
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSystemActionsChanged()V

    .line 361
    goto/16 :goto_147

    .line 353
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 354
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 356
    goto/16 :goto_147

    .line 345
    .end local v2    # "_arg0":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked(I)V

    .line 348
    goto/16 :goto_147

    .line 337
    .end local v2    # "_arg0":I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    .line 340
    goto/16 :goto_147

    .line 329
    .end local v2    # "_arg0":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 330
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    .line 332
    goto/16 :goto_147

    .line 319
    .end local v2    # "_arg0":Z
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 322
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    .line 324
    goto/16 :goto_147

    .line 311
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    .line 314
    goto/16 :goto_147

    .line 301
    .end local v2    # "_arg0":I
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onTouchStateChanged(II)V

    .line 306
    goto/16 :goto_147

    .line 293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c9
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 294
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 296
    goto :goto_147

    .line 281
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 285
    .local v3, "_arg1":Landroid/graphics/Region;
    sget-object v4, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/MagnificationConfig;

    .line 286
    .local v4, "_arg2":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 288
    goto :goto_147

    .line 271
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Region;
    .end local v4    # "_arg2":Landroid/accessibilityservice/MagnificationConfig;
    :pswitch_f3
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 273
    .local v2, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 276
    goto :goto_147

    .line 265
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    .end local v3    # "_arg1":I
    :pswitch_106
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    .line 266
    goto :goto_147

    .line 258
    :pswitch_10a
    sget-object v2, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 259
    .local v2, "_arg0":Landroid/accessibilityservice/AccessibilityGestureEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 261
    goto :goto_147

    .line 252
    .end local v2    # "_arg0":Landroid/accessibilityservice/AccessibilityGestureEvent;
    :pswitch_119
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    .line 253
    goto :goto_147

    .line 243
    :pswitch_11d
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 245
    .local v2, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 246
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 248
    goto :goto_147

    .line 231
    .end local v2    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "_arg1":Z
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 233
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 236
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 238
    nop

    .line 408
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_147
    return v1

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_130
        :pswitch_11d
        :pswitch_119
        :pswitch_10a
        :pswitch_106
        :pswitch_f3
        :pswitch_d8
        :pswitch_c9
        :pswitch_b9
        :pswitch_ad
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_68
        :pswitch_58
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method
