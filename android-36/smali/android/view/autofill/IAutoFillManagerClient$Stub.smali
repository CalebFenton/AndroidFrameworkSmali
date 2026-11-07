.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x6

.field static final greylist-max-o TRANSACTION_autofill:I = 0x2

.field static final blacklist TRANSACTION_autofillContent:I = 0x5

.field static final greylist-max-o TRANSACTION_dispatchUnhandledKey:I = 0xe

.field static final blacklist TRANSACTION_getAugmentedAutofillClient:I = 0x12

.field static final blacklist TRANSACTION_notifyDisableAutofill:I = 0x13

.field static final blacklist TRANSACTION_notifyFillDialogTriggerIds:I = 0x15

.field static final blacklist TRANSACTION_notifyFillUiHidden:I = 0xd

.field static final blacklist TRANSACTION_notifyFillUiShown:I = 0xc

.field static final greylist-max-o TRANSACTION_notifyNoFillUi:I = 0xb

.field static final blacklist TRANSACTION_onGetCredentialException:I = 0x4

.field static final blacklist TRANSACTION_onGetCredentialResponse:I = 0x3

.field static final greylist-max-o TRANSACTION_requestHideFillUi:I = 0x9

.field static final blacklist TRANSACTION_requestHideFillUiWhenDestroyed:I = 0xa

.field static final greylist-max-o TRANSACTION_requestShowFillUi:I = 0x8

.field static final blacklist TRANSACTION_requestShowSoftInput:I = 0x14

.field static final greylist-max-o TRANSACTION_setSaveUiState:I = 0x10

.field static final greylist-max-o TRANSACTION_setSessionFinished:I = 0x11

.field static final greylist-max-o TRANSACTION_setState:I = 0x1

.field static final greylist-max-o TRANSACTION_setTrackedViews:I = 0x7

.field static final greylist-max-o TRANSACTION_startIntentSender:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 140
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 148
    if-nez p0, :cond_4

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_4
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 152
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_14

    .line 153
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v1

    .line 155
    :cond_14
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 164
    packed-switch p0, :pswitch_data_4e

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_5
    const-string v0, "notifyFillDialogTriggerIds"

    return-object v0

    .line 244
    :pswitch_8
    const-string/jumbo v0, "requestShowSoftInput"

    return-object v0

    .line 240
    :pswitch_c
    const-string v0, "notifyDisableAutofill"

    return-object v0

    .line 236
    :pswitch_f
    const-string v0, "getAugmentedAutofillClient"

    return-object v0

    .line 232
    :pswitch_12
    const-string/jumbo v0, "setSessionFinished"

    return-object v0

    .line 228
    :pswitch_16
    const-string/jumbo v0, "setSaveUiState"

    return-object v0

    .line 224
    :pswitch_1a
    const-string/jumbo v0, "startIntentSender"

    return-object v0

    .line 220
    :pswitch_1e
    const-string v0, "dispatchUnhandledKey"

    return-object v0

    .line 216
    :pswitch_21
    const-string v0, "notifyFillUiHidden"

    return-object v0

    .line 212
    :pswitch_24
    const-string v0, "notifyFillUiShown"

    return-object v0

    .line 208
    :pswitch_27
    const-string v0, "notifyNoFillUi"

    return-object v0

    .line 204
    :pswitch_2a
    const-string/jumbo v0, "requestHideFillUiWhenDestroyed"

    return-object v0

    .line 200
    :pswitch_2e
    const-string/jumbo v0, "requestHideFillUi"

    return-object v0

    .line 196
    :pswitch_32
    const-string/jumbo v0, "requestShowFillUi"

    return-object v0

    .line 192
    :pswitch_36
    const-string/jumbo v0, "setTrackedViews"

    return-object v0

    .line 188
    :pswitch_3a
    const-string v0, "authenticate"

    return-object v0

    .line 184
    :pswitch_3d
    const-string v0, "autofillContent"

    return-object v0

    .line 180
    :pswitch_40
    const-string v0, "onGetCredentialException"

    return-object v0

    .line 176
    :pswitch_43
    const-string v0, "onGetCredentialResponse"

    return-object v0

    .line 172
    :pswitch_46
    const-string v0, "autofill"

    return-object v0

    .line 168
    :pswitch_49
    const-string/jumbo v0, "setState"

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 159
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 898
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 259
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 263
    const-string v8, "android.view.autofill.IAutoFillManagerClient"

    .line 264
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 265
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 268
    move-object v10, p3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return v9

    .line 271
    :cond_17
    move-object v10, p3

    packed-switch p1, :pswitch_data_220

    .line 517
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 510
    :pswitch_20
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillDialogTriggerIds(Ljava/util/List;)V

    .line 513
    goto/16 :goto_21f

    .line 502
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    :pswitch_2e
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 503
    .local v1, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 505
    goto/16 :goto_21f

    .line 492
    .end local v1    # "_arg0":Landroid/view/autofill/AutofillId;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 494
    .local v1, "_arg0":J
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 495
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    .line 497
    goto/16 :goto_21f

    .line 484
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 485
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    .line 487
    goto/16 :goto_21f

    .line 474
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .local v1, "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 477
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(ILjava/util/List;)V

    .line 479
    goto/16 :goto_21f

    .line 464
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 467
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    .line 469
    goto/16 :goto_21f

    .line 454
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_84
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 456
    .local v1, "_arg0":Landroid/content/IntentSender;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 457
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 459
    goto/16 :goto_21f

    .line 442
    .end local v1    # "_arg0":Landroid/content/IntentSender;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 444
    .local v1, "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 446
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 447
    .local v3, "_arg2":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    .line 449
    goto/16 :goto_21f

    .line 432
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Landroid/view/KeyEvent;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 435
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V

    .line 437
    goto/16 :goto_21f

    .line 422
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 425
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V

    .line 427
    goto/16 :goto_21f

    .line 410
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 414
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    .line 417
    goto/16 :goto_21f

    .line 400
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":I
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 403
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V

    .line 405
    goto/16 :goto_21f

    .line 390
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 393
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 395
    goto/16 :goto_21f

    .line 372
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 376
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 380
    .local v4, "_arg3":I
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 382
    .local v5, "_arg4":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v6

    .line 383
    .local v6, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 385
    goto/16 :goto_21f

    .line 352
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/view/autofill/AutofillId;

    .line 356
    .local v2, "_arg1":[Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 358
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 360
    .local v4, "_arg3":Z
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/view/autofill/AutofillId;

    .line 362
    .local v5, "_arg4":[Landroid/view/autofill/AutofillId;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 364
    .local v6, "_arg5":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 365
    .local v7, "_arg6":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    .line 367
    goto/16 :goto_21f

    .line 336
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":[Landroid/view/autofill/AutofillId;
    .end local v6    # "_arg5":Landroid/view/autofill/AutofillId;
    .end local v7    # "_arg6":Z
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg1":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/IntentSender;

    .line 342
    .local v3, "_arg2":Landroid/content/IntentSender;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 344
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 345
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 347
    goto/16 :goto_21f

    .line 324
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Z
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 328
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    .line 329
    .local v3, "_arg2":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    .line 331
    goto :goto_21f

    .line 310
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Landroid/content/ClipData;
    :pswitch_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 314
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    goto :goto_21f

    .line 298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 302
    .restart local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v3, Landroid/credentials/GetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/GetCredentialResponse;

    .line 303
    .local v3, "_arg2":Landroid/credentials/GetCredentialResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    .line 305
    goto :goto_21f

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Landroid/credentials/GetCredentialResponse;
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 288
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v3, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 290
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 291
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 293
    goto :goto_21f

    .line 276
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v4    # "_arg3":Z
    :pswitch_214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(I)V

    .line 279
    nop

    .line 520
    .end local v1    # "_arg0":I
    :goto_21f
    return v9

    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_214
        :pswitch_1f9
        :pswitch_1de
        :pswitch_1c3
        :pswitch_1a8
        :pswitch_181
        :pswitch_14d
        :pswitch_120
        :pswitch_10c
        :pswitch_f8
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_9c
        :pswitch_84
        :pswitch_74
        :pswitch_62
        :pswitch_52
        :pswitch_3e
        :pswitch_2e
        :pswitch_20
    .end packed-switch
.end method
