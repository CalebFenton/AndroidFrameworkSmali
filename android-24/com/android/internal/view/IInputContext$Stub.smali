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

.field static final TRANSACTION_beginBatchEdit:I = 0xf

.field static final TRANSACTION_clearMetaKeyStates:I = 0x13

.field static final TRANSACTION_commitCompletion:I = 0xa

.field static final TRANSACTION_commitCorrection:I = 0xb

.field static final TRANSACTION_commitText:I = 0x9

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final TRANSACTION_endBatchEdit:I = 0x10

.field static final TRANSACTION_finishComposingText:I = 0x8

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x16

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xe

.field static final TRANSACTION_performEditorAction:I = 0xd

.field static final TRANSACTION_performPrivateCommand:I = 0x14

.field static final TRANSACTION_reportFullscreenMode:I = 0x11

.field static final TRANSACTION_requestUpdateCursorAnchorInfo:I = 0x17

.field static final TRANSACTION_sendKeyEvent:I = 0x12

.field static final TRANSACTION_setComposingRegion:I = 0x15

.field static final TRANSACTION_setComposingText:I = 0x7

.field static final TRANSACTION_setSelection:I = 0xc


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
    .line 308
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
    move-result v1

    #@c1
    .line 125
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v9

    #@c5
    .line 126
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingTextInCodePoints(II)V

    #@c8
    .line 127
    const/4 v14, 0x1

    #@c9
    return v14

    #@ca
    .line 131
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_1

    #@d8
    .line 134
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@da
    move-object/from16 v0, p2

    #@dc
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df
    move-result-object v6

    #@e0
    check-cast v6, Ljava/lang/CharSequence;

    #@e2
    .line 140
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v9

    #@e6
    .line 141
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    #@e9
    .line 142
    const/4 v14, 0x1

    #@ea
    return v14

    #@eb
    .line 137
    .end local v9    # "_arg1":I
    :cond_1
    const/4 v6, 0x0

    #@ec
    .local v6, "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    #@ed
    .line 146
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@f0
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    #@f8
    .line 148
    const/4 v14, 0x1

    #@f9
    return v14

    #@fa
    .line 152
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v14

    #@106
    if-eqz v14, :cond_2

    #@108
    .line 155
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10f
    move-result-object v6

    #@110
    check-cast v6, Ljava/lang/CharSequence;

    #@112
    .line 161
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@115
    move-result v9

    #@116
    .line 162
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    #@119
    .line 163
    const/4 v14, 0x1

    #@11a
    return v14

    #@11b
    .line 158
    .end local v9    # "_arg1":I
    :cond_2
    const/4 v6, 0x0

    #@11c
    .restart local v6    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    #@11d
    .line 167
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@125
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@128
    move-result v14

    #@129
    if-eqz v14, :cond_3

    #@12b
    .line 170
    sget-object v14, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12d
    move-object/from16 v0, p2

    #@12f
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@132
    move-result-object v3

    #@133
    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    #@135
    .line 175
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    #@138
    .line 176
    const/4 v14, 0x1

    #@139
    return v14

    #@13a
    .line 173
    :cond_3
    const/4 v3, 0x0

    #@13b
    .local v3, "_arg0":Landroid/view/inputmethod/CompletionInfo;
    goto :goto_3

    #@13c
    .line 180
    .end local v3    # "_arg0":Landroid/view/inputmethod/CompletionInfo;
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@13f
    move-object/from16 v0, p2

    #@141
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@144
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@147
    move-result v14

    #@148
    if-eqz v14, :cond_4

    #@14a
    .line 183
    sget-object v14, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@151
    move-result-object v4

    #@152
    check-cast v4, Landroid/view/inputmethod/CorrectionInfo;

    #@154
    .line 188
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@157
    .line 189
    const/4 v14, 0x1

    #@158
    return v14

    #@159
    .line 186
    :cond_4
    const/4 v4, 0x0

    #@15a
    .local v4, "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    goto :goto_4

    #@15b
    .line 193
    .end local v4    # "_arg0":Landroid/view/inputmethod/CorrectionInfo;
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
    .line 197
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v9

    #@16b
    .line 198
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    #@16e
    .line 199
    const/4 v14, 0x1

    #@16f
    return v14

    #@170
    .line 203
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@173
    move-object/from16 v0, p2

    #@175
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@178
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17b
    move-result v1

    #@17c
    .line 206
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    #@17f
    .line 207
    const/4 v14, 0x1

    #@180
    return v14

    #@181
    .line 211
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v1

    #@18d
    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    #@190
    .line 215
    const/4 v14, 0x1

    #@191
    return v14

    #@192
    .line 219
    .end local v1    # "_arg0":I
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@195
    move-object/from16 v0, p2

    #@197
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19a
    .line 220
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    #@19d
    .line 221
    const/4 v14, 0x1

    #@19e
    return v14

    #@19f
    .line 225
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a7
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    #@1aa
    .line 227
    const/4 v14, 0x1

    #@1ab
    return v14

    #@1ac
    .line 231
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1af
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b7
    move-result v14

    #@1b8
    if-eqz v14, :cond_5

    #@1ba
    const/4 v8, 0x1

    #@1bb
    .line 234
    .local v8, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    #@1be
    .line 235
    const/4 v14, 0x1

    #@1bf
    return v14

    #@1c0
    .line 233
    .end local v8    # "_arg0":Z
    :cond_5
    const/4 v8, 0x0

    #@1c1
    goto :goto_5

    #@1c2
    .line 239
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1c5
    move-object/from16 v0, p2

    #@1c7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v14

    #@1ce
    if-eqz v14, :cond_6

    #@1d0
    .line 242
    sget-object v14, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d7
    move-result-object v2

    #@1d8
    check-cast v2, Landroid/view/KeyEvent;

    #@1da
    .line 247
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    #@1dd
    .line 248
    const/4 v14, 0x1

    #@1de
    return v14

    #@1df
    .line 245
    :cond_6
    const/4 v2, 0x0

    #@1e0
    .local v2, "_arg0":Landroid/view/KeyEvent;
    goto :goto_6

    #@1e1
    .line 252
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v1

    #@1ed
    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    #@1f0
    .line 256
    const/4 v14, 0x1

    #@1f1
    return v14

    #@1f2
    .line 260
    .end local v1    # "_arg0":I
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fd
    move-result-object v7

    #@1fe
    .line 264
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@201
    move-result v14

    #@202
    if-eqz v14, :cond_7

    #@204
    .line 265
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@206
    move-object/from16 v0, p2

    #@208
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20b
    move-result-object v10

    #@20c
    check-cast v10, Landroid/os/Bundle;

    #@20e
    .line 270
    :goto_7
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@211
    .line 271
    const/4 v14, 0x1

    #@212
    return v14

    #@213
    .line 268
    :cond_7
    const/4 v10, 0x0

    #@214
    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@215
    .line 275
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
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
    .line 280
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    #@228
    .line 281
    const/4 v14, 0x1

    #@229
    return v14

    #@22a
    .line 285
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_16
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@22d
    move-object/from16 v0, p2

    #@22f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@232
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235
    move-result v1

    #@236
    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@239
    move-result v9

    #@23a
    .line 291
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@23d
    move-result-object v14

    #@23e
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@241
    move-result-object v12

    #@242
    .line 292
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    #@245
    .line 293
    const/4 v14, 0x1

    #@246
    return v14

    #@247
    .line 297
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_17
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    #@24a
    move-object/from16 v0, p2

    #@24c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24f
    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@252
    move-result v1

    #@253
    .line 301
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@256
    move-result v9

    #@257
    .line 303
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25a
    move-result-object v14

    #@25b
    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@25e
    move-result-object v12

    #@25f
    .line 304
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    #@262
    .line 305
    const/4 v14, 0x1

    #@263
    return v14

    #@264
    .line 43
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
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
