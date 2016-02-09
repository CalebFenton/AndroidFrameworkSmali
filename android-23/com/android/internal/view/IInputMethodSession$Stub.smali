.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x7

.field static final TRANSACTION_displayCompletions:I = 0x6

.field static final TRANSACTION_finishInput:I = 0x1

.field static final TRANSACTION_finishSession:I = 0x9

.field static final TRANSACTION_toggleSoftInput:I = 0x8

.field static final TRANSACTION_updateCursor:I = 0x5

.field static final TRANSACTION_updateCursorAnchorInfo:I = 0xa

.field static final TRANSACTION_updateExtractedText:I = 0x2

.field static final TRANSACTION_updateSelection:I = 0x3

.field static final TRANSACTION_viewClicked:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "com.android.internal.view.IInputMethodSession"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Lcom/android/internal/view/IInputMethodSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 162
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    #@1d
    .line 53
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 57
    :sswitch_2
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v2

    #@2b
    .line 61
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 62
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v14

    #@39
    check-cast v14, Landroid/view/inputmethod/ExtractedText;

    #@3b
    .line 67
    :goto_0
    invoke-virtual {p0, v2, v14}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    #@3e
    .line 68
    const/4 v1, 0x1

    #@3f
    return v1

    #@40
    .line 65
    :cond_0
    const/4 v14, 0x0

    #@41
    .local v14, "_arg1":Landroid/view/inputmethod/ExtractedText;
    goto :goto_0

    #@42
    .line 72
    .end local v2    # "_arg0":I
    .end local v14    # "_arg1":Landroid/view/inputmethod/ExtractedText;
    :sswitch_3
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v2

    #@4e
    .line 76
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v3

    #@52
    .line 78
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v4

    #@56
    .line 80
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v5

    #@5a
    .line 82
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v6

    #@5e
    .line 84
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v7

    #@62
    .local v7, "_arg5":I
    move-object v1, p0

    #@63
    .line 85
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    #@66
    .line 86
    const/4 v1, 0x1

    #@67
    return v1

    #@68
    .line 90
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    :sswitch_4
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_1

    #@76
    const/4 v11, 0x1

    #@77
    .line 93
    .local v11, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->viewClicked(Z)V

    #@7a
    .line 94
    const/4 v1, 0x1

    #@7b
    return v1

    #@7c
    .line 92
    .end local v11    # "_arg0":Z
    :cond_1
    const/4 v11, 0x0

    #@7d
    .restart local v11    # "_arg0":Z
    goto :goto_1

    #@7e
    .line 98
    .end local v11    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_2

    #@8c
    .line 101
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@93
    move-result-object v8

    #@94
    check-cast v8, Landroid/graphics/Rect;

    #@96
    .line 106
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    #@99
    .line 107
    const/4 v1, 0x1

    #@9a
    return v1

    #@9b
    .line 104
    :cond_2
    const/4 v8, 0x0

    #@9c
    .local v8, "_arg0":Landroid/graphics/Rect;
    goto :goto_2

    #@9d
    .line 111
    .end local v8    # "_arg0":Landroid/graphics/Rect;
    :sswitch_6
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 113
    sget-object v1, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a7
    move-object/from16 v0, p2

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@ac
    move-result-object v12

    #@ad
    check-cast v12, [Landroid/view/inputmethod/CompletionInfo;

    #@af
    .line 114
    .local v12, "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0, v12}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    #@b2
    .line 115
    const/4 v1, 0x1

    #@b3
    return v1

    #@b4
    .line 119
    .end local v12    # "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    :sswitch_7
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@b7
    move-object/from16 v0, p2

    #@b9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf
    move-result-object v10

    #@c0
    .line 123
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v1

    #@c4
    if-eqz v1, :cond_3

    #@c6
    .line 124
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c8
    move-object/from16 v0, p2

    #@ca
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cd
    move-result-object v13

    #@ce
    check-cast v13, Landroid/os/Bundle;

    #@d0
    .line 129
    :goto_3
    invoke-virtual {p0, v10, v13}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@d3
    .line 130
    const/4 v1, 0x1

    #@d4
    return v1

    #@d5
    .line 127
    :cond_3
    const/4 v13, 0x0

    #@d6
    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    #@d7
    .line 134
    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@da
    move-object/from16 v0, p2

    #@dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@df
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v2

    #@e3
    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v3

    #@e7
    .line 139
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->toggleSoftInput(II)V

    #@ea
    .line 140
    const/4 v1, 0x1

    #@eb
    return v1

    #@ec
    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_9
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 145
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishSession()V

    #@f7
    .line 146
    const/4 v1, 0x1

    #@f8
    return v1

    #@f9
    .line 150
    :sswitch_a
    const-string/jumbo v1, "com.android.internal.view.IInputMethodSession"

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104
    move-result v1

    #@105
    if-eqz v1, :cond_4

    #@107
    .line 153
    sget-object v1, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@109
    move-object/from16 v0, p2

    #@10b
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10e
    move-result-object v9

    #@10f
    check-cast v9, Landroid/view/inputmethod/CursorAnchorInfo;

    #@111
    .line 158
    :goto_4
    invoke-virtual {p0, v9}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@114
    .line 159
    const/4 v1, 0x1

    #@115
    return v1

    #@116
    .line 156
    :cond_4
    const/4 v9, 0x0

    #@117
    .local v9, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    goto :goto_4

    #@118
    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
