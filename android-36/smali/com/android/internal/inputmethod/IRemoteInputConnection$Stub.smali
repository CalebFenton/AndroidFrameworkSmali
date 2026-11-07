.class public abstract Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_beginBatchEdit:I = 0x11

.field static final blacklist TRANSACTION_cancelCancellationSignal:I = 0x23

.field static final blacklist TRANSACTION_clearMetaKeyStates:I = 0x14

.field static final blacklist TRANSACTION_commitCompletion:I = 0xc

.field static final blacklist TRANSACTION_commitContent:I = 0x1f

.field static final blacklist TRANSACTION_commitCorrection:I = 0xd

.field static final blacklist TRANSACTION_commitText:I = 0xa

.field static final blacklist TRANSACTION_commitTextWithTextAttribute:I = 0xb

.field static final blacklist TRANSACTION_deleteSurroundingText:I = 0x5

.field static final blacklist TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final blacklist TRANSACTION_endBatchEdit:I = 0x12

.field static final blacklist TRANSACTION_finishComposingText:I = 0x9

.field static final blacklist TRANSACTION_forgetCancellationSignal:I = 0x24

.field static final blacklist TRANSACTION_getCursorCapsMode:I = 0x3

.field static final blacklist TRANSACTION_getExtractedText:I = 0x4

.field static final blacklist TRANSACTION_getSelectedText:I = 0x1b

.field static final blacklist TRANSACTION_getSurroundingText:I = 0x20

.field static final blacklist TRANSACTION_getTextAfterCursor:I = 0x2

.field static final blacklist TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final blacklist TRANSACTION_performContextMenuAction:I = 0x10

.field static final blacklist TRANSACTION_performEditorAction:I = 0xf

.field static final blacklist TRANSACTION_performHandwritingGesture:I = 0x17

.field static final blacklist TRANSACTION_performPrivateCommand:I = 0x16

.field static final blacklist TRANSACTION_performSpellCheck:I = 0x15

.field static final blacklist TRANSACTION_previewHandwritingGesture:I = 0x18

.field static final blacklist TRANSACTION_replaceText:I = 0x22

.field static final blacklist TRANSACTION_requestCursorUpdates:I = 0x1c

.field static final blacklist TRANSACTION_requestCursorUpdatesWithFilter:I = 0x1d

.field static final blacklist TRANSACTION_requestTextBoundsInfo:I = 0x1e

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x13

.field static final blacklist TRANSACTION_setComposingRegion:I = 0x19

.field static final blacklist TRANSACTION_setComposingRegionWithTextAttribute:I = 0x1a

.field static final blacklist TRANSACTION_setComposingText:I = 0x7

.field static final blacklist TRANSACTION_setComposingTextWithTextAttribute:I = 0x8

.field static final blacklist TRANSACTION_setImeConsumesInput:I = 0x21

.field static final blacklist TRANSACTION_setSelection:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "com.android.internal.inputmethod.IRemoteInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v1, :cond_14

    .line 152
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object v1

    .line 154
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_82

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_5
    const-string v0, "forgetCancellationSignal"

    return-object v0

    .line 303
    :pswitch_8
    const-string v0, "cancelCancellationSignal"

    return-object v0

    .line 299
    :pswitch_b
    const-string/jumbo v0, "replaceText"

    return-object v0

    .line 295
    :pswitch_f
    const-string/jumbo v0, "setImeConsumesInput"

    return-object v0

    .line 291
    :pswitch_13
    const-string v0, "getSurroundingText"

    return-object v0

    .line 287
    :pswitch_16
    const-string v0, "commitContent"

    return-object v0

    .line 283
    :pswitch_19
    const-string/jumbo v0, "requestTextBoundsInfo"

    return-object v0

    .line 279
    :pswitch_1d
    const-string/jumbo v0, "requestCursorUpdatesWithFilter"

    return-object v0

    .line 275
    :pswitch_21
    const-string/jumbo v0, "requestCursorUpdates"

    return-object v0

    .line 271
    :pswitch_25
    const-string v0, "getSelectedText"

    return-object v0

    .line 267
    :pswitch_28
    const-string/jumbo v0, "setComposingRegionWithTextAttribute"

    return-object v0

    .line 263
    :pswitch_2c
    const-string/jumbo v0, "setComposingRegion"

    return-object v0

    .line 259
    :pswitch_30
    const-string/jumbo v0, "previewHandwritingGesture"

    return-object v0

    .line 255
    :pswitch_34
    const-string/jumbo v0, "performHandwritingGesture"

    return-object v0

    .line 251
    :pswitch_38
    const-string/jumbo v0, "performPrivateCommand"

    return-object v0

    .line 247
    :pswitch_3c
    const-string/jumbo v0, "performSpellCheck"

    return-object v0

    .line 243
    :pswitch_40
    const-string v0, "clearMetaKeyStates"

    return-object v0

    .line 239
    :pswitch_43
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 235
    :pswitch_47
    const-string v0, "endBatchEdit"

    return-object v0

    .line 231
    :pswitch_4a
    const-string v0, "beginBatchEdit"

    return-object v0

    .line 227
    :pswitch_4d
    const-string/jumbo v0, "performContextMenuAction"

    return-object v0

    .line 223
    :pswitch_51
    const-string/jumbo v0, "performEditorAction"

    return-object v0

    .line 219
    :pswitch_55
    const-string/jumbo v0, "setSelection"

    return-object v0

    .line 215
    :pswitch_59
    const-string v0, "commitCorrection"

    return-object v0

    .line 211
    :pswitch_5c
    const-string v0, "commitCompletion"

    return-object v0

    .line 207
    :pswitch_5f
    const-string v0, "commitTextWithTextAttribute"

    return-object v0

    .line 203
    :pswitch_62
    const-string v0, "commitText"

    return-object v0

    .line 199
    :pswitch_65
    const-string v0, "finishComposingText"

    return-object v0

    .line 195
    :pswitch_68
    const-string/jumbo v0, "setComposingTextWithTextAttribute"

    return-object v0

    .line 191
    :pswitch_6c
    const-string/jumbo v0, "setComposingText"

    return-object v0

    .line 187
    :pswitch_70
    const-string v0, "deleteSurroundingTextInCodePoints"

    return-object v0

    .line 183
    :pswitch_73
    const-string v0, "deleteSurroundingText"

    return-object v0

    .line 179
    :pswitch_76
    const-string v0, "getExtractedText"

    return-object v0

    .line 175
    :pswitch_79
    const-string v0, "getCursorCapsMode"

    return-object v0

    .line 171
    :pswitch_7c
    const-string v0, "getTextAfterCursor"

    return-object v0

    .line 167
    :pswitch_7f
    const-string v0, "getTextBeforeCursor"

    return-object v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
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

    .line 1351
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    const-string v7, "com.android.internal.inputmethod.IRemoteInputConnection"

    .line 323
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 324
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 327
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    return v8

    .line 330
    :cond_16
    packed-switch p1, :pswitch_data_3e8

    .line 760
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 753
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 754
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->forgetCancellationSignal(Landroid/os/IBinder;)V

    .line 756
    goto/16 :goto_3e6

    .line 745
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->cancelCancellationSignal(Landroid/os/IBinder;)V

    .line 748
    goto/16 :goto_3e6

    .line 727
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_36
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 729
    .local v1, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .local v3, "_arg2":I
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 735
    .local v4, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 737
    .local v5, "_arg4":I
    sget-object v6, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/TextAttribute;

    .line 738
    .local v6, "_arg5":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 740
    goto/16 :goto_3e6

    .line 717
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/CharSequence;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/view/inputmethod/TextAttribute;
    :pswitch_63
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 719
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 720
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    .line 722
    goto/16 :goto_3e6

    .line 701
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Z
    :pswitch_77
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 703
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 705
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    .local v4, "_arg3":I
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 710
    .local v5, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 712
    goto/16 :goto_3e6

    .line 685
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_9c
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 687
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/inputmethod/InputContentInfo;

    .line 689
    .local v2, "_arg1":Landroid/view/inputmethod/InputContentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    .restart local v3    # "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 693
    .local v4, "_arg3":Landroid/os/Bundle;
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 694
    .restart local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 696
    goto/16 :goto_3e6

    .line 673
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/InputContentInfo;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_cd
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 675
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 677
    .local v2, "_arg1":Landroid/graphics/RectF;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 678
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V

    .line 680
    goto/16 :goto_3e6

    .line 657
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/graphics/RectF;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_ed
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 659
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 665
    .local v4, "_arg3":I
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 666
    .restart local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 668
    goto/16 :goto_3e6

    .line 643
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_112
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 645
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .restart local v3    # "_arg2":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 650
    .local v4, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 652
    goto/16 :goto_3e6

    .line 631
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_132
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 633
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2    # "_arg1":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 636
    .local v3, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 638
    goto/16 :goto_3e6

    .line 617
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_14e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 619
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    .local v3, "_arg2":I
    sget-object v4, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/TextAttribute;

    .line 624
    .local v4, "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    .line 626
    goto/16 :goto_3e6

    .line 605
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_16e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 607
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 609
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 610
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 612
    goto/16 :goto_3e6

    .line 593
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_186
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 595
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    .line 597
    .local v2, "_arg1":Landroid/view/inputmethod/ParcelableHandwritingGesture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 598
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V

    .line 600
    goto/16 :goto_3e6

    .line 581
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_1a2
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 583
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    .line 585
    .restart local v2    # "_arg1":Landroid/view/inputmethod/ParcelableHandwritingGesture;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 586
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V

    .line 588
    goto/16 :goto_3e6

    .line 569
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_1c2
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 571
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 574
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    goto/16 :goto_3e6

    .line 561
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_1de
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 562
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 564
    goto/16 :goto_3e6

    .line 551
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_1ee
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 553
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 556
    goto/16 :goto_3e6

    .line 541
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    :pswitch_202
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 543
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 544
    .local v2, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 546
    goto/16 :goto_3e6

    .line 533
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/KeyEvent;
    :pswitch_21a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 534
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 536
    goto/16 :goto_3e6

    .line 525
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_22a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 526
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 528
    goto/16 :goto_3e6

    .line 515
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_23a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 517
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 520
    goto/16 :goto_3e6

    .line 505
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    :pswitch_24e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 507
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 510
    goto/16 :goto_3e6

    .line 493
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    :pswitch_262
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 495
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 498
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 500
    goto/16 :goto_3e6

    .line 483
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_27a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 485
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/CorrectionInfo;

    .line 486
    .local v2, "_arg1":Landroid/view/inputmethod/CorrectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    .line 488
    goto/16 :goto_3e6

    .line 473
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/CorrectionInfo;
    :pswitch_292
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 475
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/CompletionInfo;

    .line 476
    .local v2, "_arg1":Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    .line 478
    goto/16 :goto_3e6

    .line 459
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/CompletionInfo;
    :pswitch_2aa
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 461
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 463
    .local v2, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/TextAttribute;

    .line 466
    .restart local v4    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 468
    goto/16 :goto_3e6

    .line 447
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_2ce
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 449
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 451
    .restart local v2    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 454
    goto/16 :goto_3e6

    .line 439
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    :pswitch_2ea
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 440
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 442
    goto/16 :goto_3e6

    .line 425
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    :pswitch_2fa
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 427
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 429
    .restart local v2    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/TextAttribute;

    .line 432
    .restart local v4    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 434
    goto/16 :goto_3e6

    .line 413
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :pswitch_31e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 415
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 417
    .restart local v2    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 420
    goto/16 :goto_3e6

    .line 401
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    :pswitch_33a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 403
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 408
    goto/16 :goto_3e6

    .line 389
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_352
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 391
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 396
    goto/16 :goto_3e6

    .line 375
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_36a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 377
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v2, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 379
    .local v2, "_arg1":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3    # "_arg2":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 382
    .local v4, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V

    .line 384
    goto :goto_3e6

    .line 363
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_38d
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 365
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg1":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 368
    .local v3, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 370
    goto :goto_3e6

    .line 349
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_3a8
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 351
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .local v3, "_arg2":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 356
    .restart local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 358
    goto :goto_3e6

    .line 335
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_3c7
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 337
    .restart local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .restart local v3    # "_arg2":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 342
    .restart local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 344
    nop

    .line 763
    .end local v1    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :goto_3e6
    return v8

    nop

    :pswitch_data_3e8
    .packed-switch 0x1
        :pswitch_3c7
        :pswitch_3a8
        :pswitch_38d
        :pswitch_36a
        :pswitch_352
        :pswitch_33a
        :pswitch_31e
        :pswitch_2fa
        :pswitch_2ea
        :pswitch_2ce
        :pswitch_2aa
        :pswitch_292
        :pswitch_27a
        :pswitch_262
        :pswitch_24e
        :pswitch_23a
        :pswitch_22a
        :pswitch_21a
        :pswitch_202
        :pswitch_1ee
        :pswitch_1de
        :pswitch_1c2
        :pswitch_1a2
        :pswitch_186
        :pswitch_16e
        :pswitch_14e
        :pswitch_132
        :pswitch_112
        :pswitch_ed
        :pswitch_cd
        :pswitch_9c
        :pswitch_77
        :pswitch_63
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
