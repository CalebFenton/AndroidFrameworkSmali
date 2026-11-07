.class public abstract Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteAccessibilityInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearMetaKeyStates:I = 0x9

.field static final blacklist TRANSACTION_commitText:I = 0x1

.field static final blacklist TRANSACTION_deleteSurroundingText:I = 0x4

.field static final blacklist TRANSACTION_getCursorCapsMode:I = 0x8

.field static final blacklist TRANSACTION_getSurroundingText:I = 0x3

.field static final blacklist TRANSACTION_performContextMenuAction:I = 0x7

.field static final blacklist TRANSACTION_performEditorAction:I = 0x6

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x5

.field static final blacklist TRANSACTION_setSelection:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_24

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_5
    const-string v0, "clearMetaKeyStates"

    return-object v0

    .line 114
    :pswitch_8
    const-string v0, "getCursorCapsMode"

    return-object v0

    .line 110
    :pswitch_b
    const-string/jumbo v0, "performContextMenuAction"

    return-object v0

    .line 106
    :pswitch_f
    const-string/jumbo v0, "performEditorAction"

    return-object v0

    .line 102
    :pswitch_13
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 98
    :pswitch_17
    const-string v0, "deleteSurroundingText"

    return-object v0

    .line 94
    :pswitch_1a
    const-string v0, "getSurroundingText"

    return-object v0

    .line 90
    :pswitch_1d
    const-string/jumbo v0, "setSelection"

    return-object v0

    .line 86
    :pswitch_21
    const-string v0, "commitText"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 415
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 133
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 141
    :cond_16
    packed-switch p1, :pswitch_data_110

    .line 251
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 242
    :pswitch_1f
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 244
    .local v2, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 247
    move-object v3, p0

    goto/16 :goto_10e

    .line 230
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":I
    :pswitch_34
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 232
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 235
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 237
    move-object v3, p0

    goto/16 :goto_10e

    .line 220
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_51
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 222
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 225
    move-object v3, p0

    goto/16 :goto_10e

    .line 210
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":I
    :pswitch_66
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 212
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 215
    move-object v3, p0

    goto/16 :goto_10e

    .line 200
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":I
    :pswitch_7b
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 202
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 203
    .local v3, "_arg1":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 205
    move-object v3, p0

    goto/16 :goto_10e

    .line 188
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":Landroid/view/KeyEvent;
    :pswitch_94
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 190
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 195
    move-object v3, p0

    goto :goto_10e

    .line 172
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_ac
    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 174
    .local v4, "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    .local v7, "_arg3":I
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/infra/AndroidFuture;

    .line 181
    .local v8, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 183
    goto :goto_10e

    .line 160
    .end local v4    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_d2
    move-object v3, p0

    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 162
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 167
    goto :goto_10e

    .line 146
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_ea
    move-object v3, p0

    sget-object v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 148
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 150
    .local v4, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 152
    .restart local v5    # "_arg2":I
    sget-object v6, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/TextAttribute;

    .line 153
    .local v6, "_arg3":Landroid/view/inputmethod/TextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 155
    nop

    .line 254
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local v4    # "_arg1":Ljava/lang/CharSequence;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/inputmethod/TextAttribute;
    :goto_10e
    return v1

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_d2
        :pswitch_ac
        :pswitch_94
        :pswitch_7b
        :pswitch_66
        :pswitch_51
        :pswitch_34
        :pswitch_1f
    .end packed-switch
.end method
