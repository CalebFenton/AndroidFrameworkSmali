.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final greylist-max-o TRANSACTION_cancelSession:I = 0xa

.field static final greylist-max-o TRANSACTION_disableOwnedAutofillServices:I = 0xd

.field static final greylist-max-o TRANSACTION_finishSession:I = 0x9

.field static final greylist-max-o TRANSACTION_getAutofillServiceComponentName:I = 0x15

.field static final greylist-max-o TRANSACTION_getAvailableFieldClassificationAlgorithms:I = 0x16

.field static final greylist-max-o TRANSACTION_getDefaultFieldClassificationAlgorithm:I = 0x17

.field static final greylist-max-o TRANSACTION_getFillEventHistory:I = 0x4

.field static final greylist-max-o TRANSACTION_getUserData:I = 0x11

.field static final greylist-max-o TRANSACTION_getUserDataId:I = 0x12

.field static final greylist-max-o TRANSACTION_isFieldClassificationEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_isServiceEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_isServiceSupported:I = 0xe

.field static final blacklist TRANSACTION_notifyImeAnimationEnd:I = 0x1d

.field static final blacklist TRANSACTION_notifyImeAnimationStart:I = 0x1c

.field static final blacklist TRANSACTION_notifyNotExpiringResponseDuringAuth:I = 0x19

.field static final blacklist TRANSACTION_notifyViewEnteredIgnoredDuringAuthCount:I = 0x1a

.field static final greylist-max-o TRANSACTION_onPendingSaveUi:I = 0x10

.field static final greylist-max-o TRANSACTION_removeClient:I = 0x2

.field static final greylist-max-o TRANSACTION_restoreSession:I = 0x5

.field static final blacklist TRANSACTION_setAugmentedAutofillWhitelist:I = 0x18

.field static final greylist-max-o TRANSACTION_setAuthenticationResult:I = 0xb

.field static final greylist-max-o TRANSACTION_setAutofillFailure:I = 0x7

.field static final blacklist TRANSACTION_setAutofillIdsAttemptedForRefill:I = 0x1b

.field static final greylist-max-o TRANSACTION_setHasCallback:I = 0xc

.field static final greylist-max-o TRANSACTION_setUserData:I = 0x13

.field static final blacklist TRANSACTION_setViewAutofilled:I = 0x8

.field static final greylist-max-o TRANSACTION_startSession:I = 0x3

.field static final greylist-max-o TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_14

    .line 133
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManager;

    return-object v1

    .line 135
    :cond_14
    new-instance v1, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 144
    packed-switch p0, :pswitch_data_68

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 260
    :pswitch_5
    const-string v0, "notifyImeAnimationEnd"

    return-object v0

    .line 256
    :pswitch_8
    const-string v0, "notifyImeAnimationStart"

    return-object v0

    .line 252
    :pswitch_b
    const-string/jumbo v0, "setAutofillIdsAttemptedForRefill"

    return-object v0

    .line 248
    :pswitch_f
    const-string v0, "notifyViewEnteredIgnoredDuringAuthCount"

    return-object v0

    .line 244
    :pswitch_12
    const-string v0, "notifyNotExpiringResponseDuringAuth"

    return-object v0

    .line 240
    :pswitch_15
    const-string/jumbo v0, "setAugmentedAutofillWhitelist"

    return-object v0

    .line 236
    :pswitch_19
    const-string v0, "getDefaultFieldClassificationAlgorithm"

    return-object v0

    .line 232
    :pswitch_1c
    const-string v0, "getAvailableFieldClassificationAlgorithms"

    return-object v0

    .line 228
    :pswitch_1f
    const-string v0, "getAutofillServiceComponentName"

    return-object v0

    .line 224
    :pswitch_22
    const-string v0, "isFieldClassificationEnabled"

    return-object v0

    .line 220
    :pswitch_25
    const-string/jumbo v0, "setUserData"

    return-object v0

    .line 216
    :pswitch_29
    const-string v0, "getUserDataId"

    return-object v0

    .line 212
    :pswitch_2c
    const-string v0, "getUserData"

    return-object v0

    .line 208
    :pswitch_2f
    const-string v0, "onPendingSaveUi"

    return-object v0

    .line 204
    :pswitch_32
    const-string v0, "isServiceEnabled"

    return-object v0

    .line 200
    :pswitch_35
    const-string v0, "isServiceSupported"

    return-object v0

    .line 196
    :pswitch_38
    const-string v0, "disableOwnedAutofillServices"

    return-object v0

    .line 192
    :pswitch_3b
    const-string/jumbo v0, "setHasCallback"

    return-object v0

    .line 188
    :pswitch_3f
    const-string/jumbo v0, "setAuthenticationResult"

    return-object v0

    .line 184
    :pswitch_43
    const-string v0, "cancelSession"

    return-object v0

    .line 180
    :pswitch_46
    const-string v0, "finishSession"

    return-object v0

    .line 176
    :pswitch_49
    const-string/jumbo v0, "setViewAutofilled"

    return-object v0

    .line 172
    :pswitch_4d
    const-string/jumbo v0, "setAutofillFailure"

    return-object v0

    .line 168
    :pswitch_51
    const-string/jumbo v0, "updateSession"

    return-object v0

    .line 164
    :pswitch_55
    const-string/jumbo v0, "restoreSession"

    return-object v0

    .line 160
    :pswitch_59
    const-string v0, "getFillEventHistory"

    return-object v0

    .line 156
    :pswitch_5c
    const-string/jumbo v0, "startSession"

    return-object v0

    .line 152
    :pswitch_60
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 148
    :pswitch_64
    const-string v0, "addClient"

    return-object v0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
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

    .line 139
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1076
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 271
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "android.view.autofill.IAutoFillManager"

    .line 276
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_13

    const v1, 0xffffff

    if-gt v12, v1, :cond_13

    .line 277
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    :cond_13
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 280
    move-object/from16 v8, p3

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    return v15

    .line 283
    :cond_1e
    move-object/from16 v8, p3

    packed-switch v12, :pswitch_data_2bc

    .line 621
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 610
    :pswitch_28
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 612
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 614
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 615
    .local v4, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyImeAnimationEnd(IJI)V

    .line 617
    goto/16 :goto_2bb

    .line 598
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_3c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 602
    .restart local v2    # "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 603
    .restart local v4    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyImeAnimationStart(IJI)V

    .line 605
    goto/16 :goto_2bb

    .line 586
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_50
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 588
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 590
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 591
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V

    .line 593
    goto/16 :goto_2bb

    .line 576
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "_arg2":I
    :pswitch_66
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyViewEnteredIgnoredDuringAuthCount(II)V

    .line 581
    goto/16 :goto_2bb

    .line 566
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_76
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->notifyNotExpiringResponseDuringAuth(II)V

    .line 571
    goto/16 :goto_2bb

    .line 554
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_86
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 556
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 558
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 559
    .local v3, "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 561
    goto/16 :goto_2bb

    .line 546
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    :pswitch_a0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 547
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 549
    goto/16 :goto_2bb

    .line 538
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_b0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 539
    .restart local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 541
    goto/16 :goto_2bb

    .line 530
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_c0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 531
    .restart local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 533
    goto/16 :goto_2bb

    .line 522
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_d0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 523
    .restart local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 525
    goto/16 :goto_2bb

    .line 514
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_e0
    sget-object v1, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;

    .line 515
    .local v1, "_arg0":Landroid/service/autofill/UserData;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->setUserData(Landroid/service/autofill/UserData;)V

    .line 517
    goto/16 :goto_2bb

    .line 506
    .end local v1    # "_arg0":Landroid/service/autofill/UserData;
    :pswitch_f0
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 507
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 509
    goto/16 :goto_2bb

    .line 498
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_100
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 499
    .restart local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 501
    goto/16 :goto_2bb

    .line 488
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_110
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 491
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 493
    goto/16 :goto_2bb

    .line 476
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_120
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 481
    .restart local v3    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 483
    goto/16 :goto_2bb

    .line 466
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    :pswitch_138
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 469
    .local v2, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 471
    goto/16 :goto_2bb

    .line 458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_14c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    .line 461
    goto/16 :goto_2bb

    .line 446
    .end local v1    # "_arg0":I
    :pswitch_158
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 451
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    .line 453
    goto/16 :goto_2bb

    .line 432
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_16c
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 434
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 438
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 439
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    .line 441
    goto/16 :goto_2bb

    .line 422
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_188
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    .line 427
    goto/16 :goto_2bb

    .line 410
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_198
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(III)V

    .line 417
    goto/16 :goto_2bb

    .line 398
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1ac
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 402
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V

    .line 405
    goto/16 :goto_2bb

    .line 384
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":I
    :pswitch_1c4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 388
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 390
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillFailure(ILjava/util/List;ZI)V

    .line 393
    goto/16 :goto_2bb

    .line 364
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_1de
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 368
    .local v2, "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 370
    .local v3, "_arg2":Landroid/graphics/Rect;
    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 372
    .local v4, "_arg3":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 374
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 376
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 377
    .local v7, "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 379
    goto/16 :goto_2bb

    .line 350
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/view/autofill/AutofillValue;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_20e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 354
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 356
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 357
    .local v4, "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 359
    goto/16 :goto_2bb

    .line 342
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    :pswitch_22a
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 343
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 345
    goto/16 :goto_2bb

    .line 314
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_23a
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 316
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 320
    .local v3, "_arg2":Landroid/view/autofill/AutofillId;
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 322
    .local v4, "_arg3":Landroid/graphics/Rect;
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 324
    .local v5, "_arg4":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 326
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 328
    .local v7, "_arg6":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 330
    .local v8, "_arg7":I
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 332
    .local v9, "_arg8":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 334
    .local v10, "_arg9":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v11

    .line 335
    .local v11, "_arg10":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual/range {v0 .. v11}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 337
    goto :goto_2bb

    .line 304
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/autofill/AutofillId;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/view/autofill/AutofillValue;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/content/ComponentName;
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":Lcom/android/internal/os/IResultReceiver;
    :pswitch_281
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v1

    .line 306
    .local v1, "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 309
    goto :goto_2bb

    .line 288
    .end local v1    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v2    # "_arg1":I
    :pswitch_294
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v1

    .line 290
    .restart local v1    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 292
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v4

    .line 296
    .local v4, "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 297
    .local v5, "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V

    .line 299
    nop

    .line 624
    .end local v1    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    .end local v5    # "_arg4":Z
    :goto_2bb
    return v15

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_294
        :pswitch_281
        :pswitch_23a
        :pswitch_22a
        :pswitch_20e
        :pswitch_1de
        :pswitch_1c4
        :pswitch_1ac
        :pswitch_198
        :pswitch_188
        :pswitch_16c
        :pswitch_158
        :pswitch_14c
        :pswitch_138
        :pswitch_120
        :pswitch_110
        :pswitch_100
        :pswitch_f0
        :pswitch_e0
        :pswitch_d0
        :pswitch_c0
        :pswitch_b0
        :pswitch_a0
        :pswitch_86
        :pswitch_76
        :pswitch_66
        :pswitch_50
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method
