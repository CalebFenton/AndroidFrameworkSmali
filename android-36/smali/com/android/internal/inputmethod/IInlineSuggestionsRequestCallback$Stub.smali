.class public abstract Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionsRequestCallback.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInlineSuggestionsRequest:I = 0x2

.field static final blacklist TRANSACTION_onInlineSuggestionsSessionInvalidated:I = 0x8

.field static final blacklist TRANSACTION_onInlineSuggestionsUnsupported:I = 0x1

.field static final blacklist TRANSACTION_onInputMethodFinishInput:I = 0x7

.field static final blacklist TRANSACTION_onInputMethodFinishInputView:I = 0x6

.field static final blacklist TRANSACTION_onInputMethodShowInputRequested:I = 0x4

.field static final blacklist TRANSACTION_onInputMethodStartInput:I = 0x3

.field static final blacklist TRANSACTION_onInputMethodStartInputView:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_1e

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "onInlineSuggestionsSessionInvalidated"

    return-object v0

    .line 138
    :pswitch_8
    const-string v0, "onInputMethodFinishInput"

    return-object v0

    .line 134
    :pswitch_b
    const-string v0, "onInputMethodFinishInputView"

    return-object v0

    .line 130
    :pswitch_e
    const-string v0, "onInputMethodStartInputView"

    return-object v0

    .line 126
    :pswitch_11
    const-string v0, "onInputMethodShowInputRequested"

    return-object v0

    .line 122
    :pswitch_14
    const-string v0, "onInputMethodStartInput"

    return-object v0

    .line 118
    :pswitch_17
    const-string v0, "onInlineSuggestionsRequest"

    return-object v0

    .line 114
    :pswitch_1a
    const-string v0, "onInlineSuggestionsUnsupported"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 375
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 153
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-string v0, "com.android.internal.inputmethod.IInlineSuggestionsRequestCallback"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 165
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 215
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsSessionInvalidated()V

    .line 216
    goto :goto_63

    .line 210
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInput()V

    .line 211
    goto :goto_63

    .line 205
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInputView()V

    .line 206
    goto :goto_63

    .line 200
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInputView()V

    .line 201
    goto :goto_63

    .line 193
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 194
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodShowInputRequested(Z)V

    .line 196
    goto :goto_63

    .line 185
    .end local v2    # "_arg0":Z
    :pswitch_39
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 186
    .local v2, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    .line 188
    goto :goto_63

    .line 175
    .end local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    :pswitch_48
    sget-object v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 177
    .local v2, "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    move-result-object v3

    .line 178
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V

    .line 180
    goto :goto_63

    .line 169
    .end local v2    # "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsUnsupported()V

    .line 170
    nop

    .line 223
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_48
        :pswitch_39
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
