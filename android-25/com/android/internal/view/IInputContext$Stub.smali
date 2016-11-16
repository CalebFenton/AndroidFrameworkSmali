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

.field static final TRANSACTION_commitContent:I = 0x18

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
    .locals 21
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
    .line 334
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v9

    #@1e
    .line 56
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v5

    #@22
    .line 58
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v18

    #@26
    .line 60
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@2d
    move-result-object v20

    #@2e
    .line 61
    .local v20, "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@30
    move/from16 v1, v18

    #@32
    move-object/from16 v2, v20

    #@34
    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@37
    .line 62
    const/4 v3, 0x1

    #@38
    return v3

    #@39
    .line 66
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@3c
    move-object/from16 v0, p2

    #@3e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v9

    #@45
    .line 70
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v5

    #@49
    .line 72
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v18

    #@4d
    .line 74
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@50
    move-result-object v3

    #@51
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@54
    move-result-object v20

    #@55
    .line 75
    .restart local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@57
    move/from16 v1, v18

    #@59
    move-object/from16 v2, v20

    #@5b
    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    #@5e
    .line 76
    const/4 v3, 0x1

    #@5f
    return v3

    #@60
    .line 80
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v9

    #@6c
    .line 84
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v5

    #@70
    .line 86
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v3

    #@74
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@77
    move-result-object v19

    #@78
    .line 87
    .local v19, "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, v19

    #@7c
    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    #@7f
    .line 88
    const/4 v3, 0x1

    #@80
    return v3

    #@81
    .line 92
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_0

    #@8f
    .line 95
    sget-object v3, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@96
    move-result-object v13

    #@97
    check-cast v13, Landroid/view/inputmethod/ExtractedTextRequest;

    #@99
    .line 101
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v5

    #@9d
    .line 103
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v18

    #@a1
    .line 105
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a4
    move-result-object v3

    #@a5
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@a8
    move-result-object v20

    #@a9
    .line 106
    .restart local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@ab
    move/from16 v1, v18

    #@ad
    move-object/from16 v2, v20

    #@af
    invoke-virtual {v0, v13, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    #@b2
    .line 107
    const/4 v3, 0x1

    #@b3
    return v3

    #@b4
    .line 98
    .end local v5    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :cond_0
    const/4 v13, 0x0

    #@b5
    .local v13, "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    goto :goto_0

    #@b6
    .line 111
    .end local v13    # "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v9

    #@c2
    .line 115
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v5

    #@c6
    .line 116
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@c8
    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    #@cb
    .line 117
    const/4 v3, 0x1

    #@cc
    return v3

    #@cd
    .line 121
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@d0
    move-object/from16 v0, p2

    #@d2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v9

    #@d9
    .line 125
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v5

    #@dd
    .line 126
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingTextInCodePoints(II)V

    #@e2
    .line 127
    const/4 v3, 0x1

    #@e3
    return v3

    #@e4
    .line 131
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_1

    #@f2
    .line 134
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9
    move-result-object v14

    #@fa
    check-cast v14, Ljava/lang/CharSequence;

    #@fc
    .line 140
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v5

    #@100
    .line 141
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@102
    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    #@105
    .line 142
    const/4 v3, 0x1

    #@106
    return v3

    #@107
    .line 137
    .end local v5    # "_arg1":I
    :cond_1
    const/4 v14, 0x0

    #@108
    .local v14, "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    #@109
    .line 146
    .end local v14    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@10c
    move-object/from16 v0, p2

    #@10e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    #@114
    .line 148
    const/4 v3, 0x1

    #@115
    return v3

    #@116
    .line 152
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@119
    move-object/from16 v0, p2

    #@11b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v3

    #@122
    if-eqz v3, :cond_2

    #@124
    .line 155
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v14

    #@12c
    check-cast v14, Ljava/lang/CharSequence;

    #@12e
    .line 161
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v5

    #@132
    .line 162
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    #@137
    .line 163
    const/4 v3, 0x1

    #@138
    return v3

    #@139
    .line 158
    .end local v5    # "_arg1":I
    :cond_2
    const/4 v14, 0x0

    #@13a
    .restart local v14    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    #@13b
    .line 167
    .end local v14    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@13e
    move-object/from16 v0, p2

    #@140
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@143
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v3

    #@147
    if-eqz v3, :cond_3

    #@149
    .line 170
    sget-object v3, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@150
    move-result-object v11

    #@151
    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    #@153
    .line 175
    :goto_3
    move-object/from16 v0, p0

    #@155
    invoke-virtual {v0, v11}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    #@158
    .line 176
    const/4 v3, 0x1

    #@159
    return v3

    #@15a
    .line 173
    :cond_3
    const/4 v11, 0x0

    #@15b
    .local v11, "_arg0":Landroid/view/inputmethod/CompletionInfo;
    goto :goto_3

    #@15c
    .line 180
    .end local v11    # "_arg0":Landroid/view/inputmethod/CompletionInfo;
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@15f
    move-object/from16 v0, p2

    #@161
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v3

    #@168
    if-eqz v3, :cond_4

    #@16a
    .line 183
    sget-object v3, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@171
    move-result-object v12

    #@172
    check-cast v12, Landroid/view/inputmethod/CorrectionInfo;

    #@174
    .line 188
    :goto_4
    move-object/from16 v0, p0

    #@176
    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@179
    .line 189
    const/4 v3, 0x1

    #@17a
    return v3

    #@17b
    .line 186
    :cond_4
    const/4 v12, 0x0

    #@17c
    .local v12, "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    goto :goto_4

    #@17d
    .line 193
    .end local v12    # "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@180
    move-object/from16 v0, p2

    #@182
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@188
    move-result v9

    #@189
    .line 197
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v5

    #@18d
    .line 198
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@18f
    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    #@192
    .line 199
    const/4 v3, 0x1

    #@193
    return v3

    #@194
    .line 203
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@197
    move-object/from16 v0, p2

    #@199
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19c
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v9

    #@1a0
    .line 206
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    #@1a5
    .line 207
    const/4 v3, 0x1

    #@1a6
    return v3

    #@1a7
    .line 211
    .end local v9    # "_arg0":I
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b2
    move-result v9

    #@1b3
    .line 214
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    #@1b5
    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    #@1b8
    .line 215
    const/4 v3, 0x1

    #@1b9
    return v3

    #@1ba
    .line 219
    .end local v9    # "_arg0":I
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    #@1c5
    .line 221
    const/4 v3, 0x1

    #@1c6
    return v3

    #@1c7
    .line 225
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    #@1d2
    .line 227
    const/4 v3, 0x1

    #@1d3
    return v3

    #@1d4
    .line 231
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dc
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1df
    move-result v3

    #@1e0
    if-eqz v3, :cond_5

    #@1e2
    const/16 v16, 0x1

    #@1e4
    .line 234
    .local v16, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@1e6
    move/from16 v1, v16

    #@1e8
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    #@1eb
    .line 235
    const/4 v3, 0x1

    #@1ec
    return v3

    #@1ed
    .line 233
    .end local v16    # "_arg0":Z
    :cond_5
    const/16 v16, 0x0

    #@1ef
    goto :goto_5

    #@1f0
    .line 239
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f8
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v3

    #@1fc
    if-eqz v3, :cond_6

    #@1fe
    .line 242
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@200
    move-object/from16 v0, p2

    #@202
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@205
    move-result-object v10

    #@206
    check-cast v10, Landroid/view/KeyEvent;

    #@208
    .line 247
    :goto_6
    move-object/from16 v0, p0

    #@20a
    invoke-virtual {v0, v10}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    #@20d
    .line 248
    const/4 v3, 0x1

    #@20e
    return v3

    #@20f
    .line 245
    :cond_6
    const/4 v10, 0x0

    #@210
    .local v10, "_arg0":Landroid/view/KeyEvent;
    goto :goto_6

    #@211
    .line 252
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@214
    move-object/from16 v0, p2

    #@216
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@219
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c
    move-result v9

    #@21d
    .line 255
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    #@21f
    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    #@222
    .line 256
    const/4 v3, 0x1

    #@223
    return v3

    #@224
    .line 260
    .end local v9    # "_arg0":I
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@227
    move-object/from16 v0, p2

    #@229
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22f
    move-result-object v15

    #@230
    .line 264
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v3

    #@234
    if-eqz v3, :cond_7

    #@236
    .line 265
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@238
    move-object/from16 v0, p2

    #@23a
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d
    move-result-object v17

    #@23e
    check-cast v17, Landroid/os/Bundle;

    #@240
    .line 270
    :goto_7
    move-object/from16 v0, p0

    #@242
    move-object/from16 v1, v17

    #@244
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@247
    .line 271
    const/4 v3, 0x1

    #@248
    return v3

    #@249
    .line 268
    :cond_7
    const/16 v17, 0x0

    #@24b
    .local v17, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@24c
    .line 275
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@24f
    move-object/from16 v0, p2

    #@251
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@254
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@257
    move-result v9

    #@258
    .line 279
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25b
    move-result v5

    #@25c
    .line 280
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    #@25e
    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    #@261
    .line 281
    const/4 v3, 0x1

    #@262
    return v3

    #@263
    .line 285
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@266
    move-object/from16 v0, p2

    #@268
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26b
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26e
    move-result v9

    #@26f
    .line 289
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@272
    move-result v5

    #@273
    .line 291
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@276
    move-result-object v3

    #@277
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@27a
    move-result-object v19

    #@27b
    .line 292
    .restart local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, v19

    #@27f
    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    #@282
    .line 293
    const/4 v3, 0x1

    #@283
    return v3

    #@284
    .line 297
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28c
    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28f
    move-result v9

    #@290
    .line 301
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@293
    move-result v5

    #@294
    .line 303
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@297
    move-result-object v3

    #@298
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@29b
    move-result-object v19

    #@29c
    .line 304
    .restart local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    #@29e
    move-object/from16 v1, v19

    #@2a0
    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    #@2a3
    .line 305
    const/4 v3, 0x1

    #@2a4
    return v3

    #@2a5
    .line 309
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ad
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b0
    move-result v3

    #@2b1
    if-eqz v3, :cond_8

    #@2b3
    .line 312
    sget-object v3, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b5
    move-object/from16 v0, p2

    #@2b7
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ba
    move-result-object v4

    #@2bb
    check-cast v4, Landroid/view/inputmethod/InputContentInfo;

    #@2bd
    .line 318
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c0
    move-result v5

    #@2c1
    .line 320
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c4
    move-result v3

    #@2c5
    if-eqz v3, :cond_9

    #@2c7
    .line 321
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ce
    move-result-object v6

    #@2cf
    check-cast v6, Landroid/os/Bundle;

    #@2d1
    .line 327
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v7

    #@2d5
    .line 329
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d8
    move-result-object v3

    #@2d9
    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    #@2dc
    move-result-object v8

    #@2dd
    .local v8, "_arg4":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v3, p0

    #@2df
    .line 330
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/view/IInputContext$Stub;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    #@2e2
    .line 331
    const/4 v3, 0x1

    #@2e3
    return v3

    #@2e4
    .line 315
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Lcom/android/internal/view/IInputContextCallback;
    :cond_8
    const/4 v4, 0x0

    #@2e5
    .local v4, "_arg0":Landroid/view/inputmethod/InputContentInfo;
    goto :goto_8

    #@2e6
    .line 324
    .end local v4    # "_arg0":Landroid/view/inputmethod/InputContentInfo;
    .restart local v5    # "_arg1":I
    :cond_9
    const/4 v6, 0x0

    #@2e7
    .local v6, "_arg2":Landroid/os/Bundle;
    goto :goto_9

    #@2e8
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
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
