.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xe

.field static final TRANSACTION_clearMetaKeyStates:I = 0x12

.field static final TRANSACTION_commitCompletion:I = 0x9

.field static final TRANSACTION_commitCorrection:I = 0xa

.field static final TRANSACTION_commitText:I = 0x8

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_endBatchEdit:I = 0xf

.field static final TRANSACTION_finishComposingText:I = 0x7

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x15

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xd

.field static final TRANSACTION_performEditorAction:I = 0xc

.field static final TRANSACTION_performPrivateCommand:I = 0x13

.field static final TRANSACTION_reportFullscreenMode:I = 0x10

.field static final TRANSACTION_requestUpdateCursorAnchorInfo:I = 0x16

.field static final TRANSACTION_sendKeyEvent:I = 0x11

.field static final TRANSACTION_setComposingRegion:I = 0x14

.field static final TRANSACTION_setComposingText:I = 0x6

.field static final TRANSACTION_setSelection:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.internal.view.IInputContext"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/internal/view/IInputContext;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 298
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 56
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v9

    #@22
    .line 58
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v11

    #@26
    .line 60
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29
    move-result-object v14

    #@2a
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@2d
    move-result-object v13

    #@2e
    .line 61
    .local v13, "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@31
    .line 62
    const/4 v14, 0x1

    #@32
    return v14

    #@33
    .line 66
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v9

    #@43
    .line 72
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v11

    #@47
    .line 74
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a
    move-result-object v14

    #@4b
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@4e
    move-result-object v13

    #@4f
    .line 75
    .restart local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@52
    .line 76
    const/4 v14, 0x1

    #@53
    return v14

    #@54
    .line 80
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v1

    #@60
    .line 84
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v9

    #@64
    .line 86
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@67
    move-result-object v14

    #@68
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@6b
    move-result-object v12

    #@6c
    .line 87
    .local v12, "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    #@6f
    .line 88
    const/4 v14, 0x1

    #@70
    return v14

    #@71
    .line 92
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@74
    move-object/from16 v0, p2

    #@76
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v14

    #@7d
    if-eqz v14, :cond_0

    #@7f
    .line 95
    sget-object v14, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@86
    move-result-object v5

    #@87
    check-cast v5, Landroid/view/inputmethod/ExtractedTextRequest;

    #@89
    .line 101
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v9

    #@8d
    .line 103
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v11

    #@91
    .line 105
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@94
    move-result-object v14

    #@95
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@98
    move-result-object v13

    #@99
    .line 106
    .restart local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v5, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    #@9c
    .line 107
    const/4 v14, 0x1

    #@9d
    return v14

    #@9e
    .line 98
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :cond_0
    const/4 v5, 0x0

    #@9f
    .local v5, "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    goto :goto_0

    #@a0
    .line 111
    .end local v5    # "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@a3
    move-object/from16 v0, p2

    #@a5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v1

    #@ac
    .line 115
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v9

    #@b0
    .line 116
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    #@b3
    .line 117
    const/4 v14, 0x1

    #@b4
    return v14

    #@b5
    .line 121
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v14

    #@c1
    if-eqz v14, :cond_1

    #@c3
    .line 124
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ca
    move-result-object v6

    #@cb
    check-cast v6, Ljava/lang/CharSequence;

    #@cd
    .line 130
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v9

    #@d1
    .line 131
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    #@d4
    .line 132
    const/4 v14, 0x1

    #@d5
    return v14

    #@d6
    .line 127
    .end local v9    # "_arg1":I
    :cond_1
    const/4 v6, 0x0

    #@d7
    .local v6, "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    #@d8
    .line 136
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    #@e3
    .line 138
    const/4 v14, 0x1

    #@e4
    return v14

    #@e5
    .line 142
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@e8
    move-object/from16 v0, p2

    #@ea
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v14

    #@f1
    if-eqz v14, :cond_2

    #@f3
    .line 145
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fa
    move-result-object v6

    #@fb
    check-cast v6, Ljava/lang/CharSequence;

    #@fd
    .line 151
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v9

    #@101
    .line 152
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    #@104
    .line 153
    const/4 v14, 0x1

    #@105
    return v14

    #@106
    .line 148
    .end local v9    # "_arg1":I
    :cond_2
    const/4 v6, 0x0

    #@107
    .restart local v6    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    #@108
    .line 157
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@10b
    move-object/from16 v0, p2

    #@10d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v14

    #@114
    if-eqz v14, :cond_3

    #@116
    .line 160
    sget-object v14, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@118
    move-object/from16 v0, p2

    #@11a
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11d
    move-result-object v3

    #@11e
    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    #@120
    .line 165
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    #@123
    .line 166
    const/4 v14, 0x1

    #@124
    return v14

    #@125
    .line 163
    :cond_3
    const/4 v3, 0x0

    #@126
    .local v3, "_arg0":Landroid/view/inputmethod/CompletionInfo;
    goto :goto_3

    #@127
    .line 170
    .end local v3    # "_arg0":Landroid/view/inputmethod/CompletionInfo;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v14

    #@133
    if-eqz v14, :cond_4

    #@135
    .line 173
    sget-object v14, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@137
    move-object/from16 v0, p2

    #@139
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13c
    move-result-object v4

    #@13d
    check-cast v4, Landroid/view/inputmethod/CorrectionInfo;

    #@13f
    .line 178
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@142
    .line 179
    const/4 v14, 0x1

    #@143
    return v14

    #@144
    .line 176
    :cond_4
    const/4 v4, 0x0

    #@145
    .local v4, "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    goto :goto_4

    #@146
    .line 183
    .end local v4    # "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@149
    move-object/from16 v0, p2

    #@14b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14e
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@151
    move-result v1

    #@152
    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@155
    move-result v9

    #@156
    .line 188
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    #@159
    .line 189
    const/4 v14, 0x1

    #@15a
    return v14

    #@15b
    .line 193
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v1

    #@167
    .line 196
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    #@16a
    .line 197
    const/4 v14, 0x1

    #@16b
    return v14

    #@16c
    .line 201
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v1

    #@178
    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    #@17b
    .line 205
    const/4 v14, 0x1

    #@17c
    return v14

    #@17d
    .line 209
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@180
    move-object/from16 v0, p2

    #@182
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    #@188
    .line 211
    const/4 v14, 0x1

    #@189
    return v14

    #@18a
    .line 215
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 216
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    #@195
    .line 217
    const/4 v14, 0x1

    #@196
    return v14

    #@197
    .line 221
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19f
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a2
    move-result v14

    #@1a3
    if-eqz v14, :cond_5

    #@1a5
    const/4 v8, 0x1

    #@1a6
    .line 224
    .local v8, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    #@1a9
    .line 225
    const/4 v14, 0x1

    #@1aa
    return v14

    #@1ab
    .line 223
    .end local v8    # "_arg0":Z
    :cond_5
    const/4 v8, 0x0

    #@1ac
    .restart local v8    # "_arg0":Z
    goto :goto_5

    #@1ad
    .line 229
    .end local v8    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1b0
    move-object/from16 v0, p2

    #@1b2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b5
    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b8
    move-result v14

    #@1b9
    if-eqz v14, :cond_6

    #@1bb
    .line 232
    sget-object v14, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c2
    move-result-object v2

    #@1c3
    check-cast v2, Landroid/view/KeyEvent;

    #@1c5
    .line 237
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    #@1c8
    .line 238
    const/4 v14, 0x1

    #@1c9
    return v14

    #@1ca
    .line 235
    :cond_6
    const/4 v2, 0x0

    #@1cb
    .local v2, "_arg0":Landroid/view/KeyEvent;
    goto :goto_6

    #@1cc
    .line 242
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d4
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v1

    #@1d8
    .line 245
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    #@1db
    .line 246
    const/4 v14, 0x1

    #@1dc
    return v14

    #@1dd
    .line 250
    .end local v1    # "_arg0":I
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1e0
    move-object/from16 v0, p2

    #@1e2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e8
    move-result-object v7

    #@1e9
    .line 254
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v14

    #@1ed
    if-eqz v14, :cond_7

    #@1ef
    .line 255
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f6
    move-result-object v10

    #@1f7
    check-cast v10, Landroid/os/Bundle;

    #@1f9
    .line 260
    :goto_7
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1fc
    .line 261
    const/4 v14, 0x1

    #@1fd
    return v14

    #@1fe
    .line 258
    :cond_7
    const/4 v10, 0x0

    #@1ff
    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@200
    .line 265
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@203
    move-object/from16 v0, p2

    #@205
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@208
    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20b
    move-result v1

    #@20c
    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v9

    #@210
    .line 270
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    #@213
    .line 271
    const/4 v14, 0x1

    #@214
    return v14

    #@215
    .line 275
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_15
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@218
    move-object/from16 v0, p2

    #@21a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@220
    move-result v1

    #@221
    .line 279
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@224
    move-result v9

    #@225
    .line 281
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@228
    move-result-object v14

    #@229
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@22c
    move-result-object v12

    #@22d
    .line 282
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    #@230
    .line 283
    const/4 v14, 0x1

    #@231
    return v14

    #@232
    .line 287
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_16
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@235
    move-object/from16 v0, p2

    #@237
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23a
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d
    move-result v1

    #@23e
    .line 291
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@241
    move-result v9

    #@242
    .line 293
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@245
    move-result-object v14

    #@246
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@249
    move-result-object v12

    #@24a
    .line 294
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    #@24d
    .line 295
    const/4 v14, 0x1

    #@24e
    return v14

    #@24f
    .line 43
    nop

    #@250
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
