.class public abstract Lcom/android/internal/inputmethod/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_appPrivateCommand:I = 0x6

.field static final blacklist TRANSACTION_displayCompletions:I = 0x5

.field static final blacklist TRANSACTION_finishInput:I = 0xa

.field static final blacklist TRANSACTION_finishSession:I = 0x7

.field static final blacklist TRANSACTION_invalidateInput:I = 0xb

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x9

.field static final blacklist TRANSACTION_updateCursor:I = 0x4

.field static final blacklist TRANSACTION_updateCursorAnchorInfo:I = 0x8

.field static final blacklist TRANSACTION_updateExtractedText:I = 0x1

.field static final blacklist TRANSACTION_updateSelection:I = 0x2

.field static final blacklist TRANSACTION_viewClicked:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodSession;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_2c

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 132
    :pswitch_5
    const-string v0, "invalidateInput"

    return-object v0

    .line 128
    :pswitch_8
    const-string v0, "finishInput"

    return-object v0

    .line 124
    :pswitch_b
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 120
    :pswitch_f
    const-string/jumbo v0, "updateCursorAnchorInfo"

    return-object v0

    .line 116
    :pswitch_13
    const-string v0, "finishSession"

    return-object v0

    .line 112
    :pswitch_16
    const-string v0, "appPrivateCommand"

    return-object v0

    .line 108
    :pswitch_19
    const-string v0, "displayCompletions"

    return-object v0

    .line 104
    :pswitch_1c
    const-string/jumbo v0, "updateCursor"

    return-object v0

    .line 100
    :pswitch_20
    const-string/jumbo v0, "viewClicked"

    return-object v0

    .line 96
    :pswitch_24
    const-string/jumbo v0, "updateSelection"

    return-object v0

    .line 92
    :pswitch_28
    const-string/jumbo v0, "updateExtractedText"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 429
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 143
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    .line 148
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 155
    :cond_16
    packed-switch p1, :pswitch_data_d4

    .line 256
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 245
    :pswitch_1f
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    .line 247
    .local v2, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v3

    .line 249
    .local v3, "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 250
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 252
    move-object v3, p0

    goto/16 :goto_d3

    .line 239
    .end local v2    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "_arg1":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v4    # "_arg2":I
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->finishInput()V

    .line 240
    move-object v3, p0

    goto/16 :goto_d3

    .line 234
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->removeImeSurface()V

    .line 235
    move-object v3, p0

    goto/16 :goto_d3

    .line 227
    :pswitch_48
    sget-object v2, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 228
    .local v2, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 230
    move-object v3, p0

    goto/16 :goto_d3

    .line 221
    .end local v2    # "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->finishSession()V

    .line 222
    move-object v3, p0

    goto/16 :goto_d3

    .line 212
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 215
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    move-object v3, p0

    goto :goto_d3

    .line 204
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_73
    sget-object v2, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 205
    .local v2, "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 207
    move-object v3, p0

    goto :goto_d3

    .line 196
    .end local v2    # "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    :pswitch_83
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 197
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    .line 199
    move-object v3, p0

    goto :goto_d3

    .line 188
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 189
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->viewClicked(Z)V

    .line 191
    move-object v3, p0

    goto :goto_d3

    .line 170
    .end local v2    # "_arg0":Z
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 176
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 178
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 180
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 181
    .local v9, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 183
    goto :goto_d3

    .line 160
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    :pswitch_bf
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .local v2, "_arg0":I
    sget-object v4, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ExtractedText;

    .line 163
    .local v4, "_arg1":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 165
    nop

    .line 259
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/inputmethod/ExtractedText;
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_9f
        :pswitch_93
        :pswitch_83
        :pswitch_73
        :pswitch_5f
        :pswitch_59
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_1f
    .end packed-switch
.end method
