.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_changeInputMethodSubtype:I = 0xb

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_restartInput:I = 0x5

.field static final TRANSACTION_revokeSession:I = 0x8

.field static final TRANSACTION_setSessionEnabled:I = 0x7

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.internal.view.IInputMethod"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
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
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/internal/view/IInputMethod;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 188
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v13

    #@7
    return v13

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v13, 0x1

    #@11
    return v13

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    .line 55
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    #@21
    .line 56
    const/4 v13, 0x1

    #@22
    return v13

    #@23
    .line 60
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v13

    #@2f
    if-eqz v13, :cond_0

    #@31
    .line 63
    sget-object v13, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroid/view/inputmethod/InputBinding;

    #@3b
    .line 68
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    #@3e
    .line 69
    const/4 v13, 0x1

    #@3f
    return v13

    #@40
    .line 66
    :cond_0
    const/4 v4, 0x0

    #@41
    .local v4, "_arg0":Landroid/view/inputmethod/InputBinding;
    goto :goto_0

    #@42
    .line 73
    .end local v4    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :sswitch_3
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    #@4d
    .line 75
    const/4 v13, 0x1

    #@4e
    return v13

    #@4f
    .line 79
    :sswitch_4
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@52
    move-object/from16 v0, p2

    #@54
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a
    move-result-object v13

    #@5b
    invoke-static {v13}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@5e
    move-result-object v6

    #@5f
    .line 83
    .local v6, "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v8

    #@63
    .line 85
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v13

    #@67
    if-eqz v13, :cond_1

    #@69
    .line 86
    sget-object v13, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v12

    #@71
    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    #@73
    .line 91
    :goto_1
    invoke-virtual {p0, v6, v8, v12}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V

    #@76
    .line 92
    const/4 v13, 0x1

    #@77
    return v13

    #@78
    .line 89
    :cond_1
    const/4 v12, 0x0

    #@79
    .local v12, "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_1

    #@7a
    .line 96
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":I
    .end local v12    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    :sswitch_5
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@7d
    move-object/from16 v0, p2

    #@7f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85
    move-result-object v13

    #@86
    invoke-static {v13}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@89
    move-result-object v6

    #@8a
    .line 100
    .restart local v6    # "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v8

    #@8e
    .line 102
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v13

    #@92
    if-eqz v13, :cond_2

    #@94
    .line 103
    sget-object v13, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@96
    move-object/from16 v0, p2

    #@98
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b
    move-result-object v12

    #@9c
    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    #@9e
    .line 108
    :goto_2
    invoke-virtual {p0, v6, v8, v12}, Lcom/android/internal/view/IInputMethod$Stub;->restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V

    #@a1
    .line 109
    const/4 v13, 0x1

    #@a2
    return v13

    #@a3
    .line 106
    :cond_2
    const/4 v12, 0x0

    #@a4
    .restart local v12    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    #@a5
    .line 113
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":I
    .end local v12    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    :sswitch_6
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v13

    #@b1
    if-eqz v13, :cond_3

    #@b3
    .line 116
    sget-object v13, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b5
    move-object/from16 v0, p2

    #@b7
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba
    move-result-object v3

    #@bb
    check-cast v3, Landroid/view/InputChannel;

    #@bd
    .line 122
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c0
    move-result-object v13

    #@c1
    invoke-static {v13}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    #@c4
    move-result-object v10

    #@c5
    .line 123
    .local v10, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual {p0, v3, v10}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    #@c8
    .line 124
    const/4 v13, 0x1

    #@c9
    return v13

    #@ca
    .line 119
    .end local v10    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :cond_3
    const/4 v3, 0x0

    #@cb
    .local v3, "_arg0":Landroid/view/InputChannel;
    goto :goto_3

    #@cc
    .line 128
    .end local v3    # "_arg0":Landroid/view/InputChannel;
    :sswitch_7
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@cf
    move-object/from16 v0, p2

    #@d1
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d7
    move-result-object v13

    #@d8
    invoke-static {v13}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    #@db
    move-result-object v7

    #@dc
    .line 132
    .local v7, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v13

    #@e0
    if-eqz v13, :cond_4

    #@e2
    const/4 v11, 0x1

    #@e3
    .line 133
    .local v11, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v7, v11}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    #@e6
    .line 134
    const/4 v13, 0x1

    #@e7
    return v13

    #@e8
    .line 132
    .end local v11    # "_arg1":Z
    :cond_4
    const/4 v11, 0x0

    #@e9
    goto :goto_4

    #@ea
    .line 138
    .end local v7    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_8
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f5
    move-result-object v13

    #@f6
    invoke-static {v13}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    #@f9
    move-result-object v7

    #@fa
    .line 141
    .restart local v7    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v7}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    #@fd
    .line 142
    const/4 v13, 0x1

    #@fe
    return v13

    #@ff
    .line 146
    .end local v7    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_9
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@107
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v1

    #@10b
    .line 150
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v13

    #@10f
    if-eqz v13, :cond_5

    #@111
    .line 151
    sget-object v13, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@113
    move-object/from16 v0, p2

    #@115
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@118
    move-result-object v9

    #@119
    check-cast v9, Landroid/os/ResultReceiver;

    #@11b
    .line 156
    :goto_5
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    #@11e
    .line 157
    const/4 v13, 0x1

    #@11f
    return v13

    #@120
    .line 154
    :cond_5
    const/4 v9, 0x0

    #@121
    .local v9, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_5

    #@122
    .line 161
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_a
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v1

    #@12e
    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v13

    #@132
    if-eqz v13, :cond_6

    #@134
    .line 166
    sget-object v13, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13b
    move-result-object v9

    #@13c
    check-cast v9, Landroid/os/ResultReceiver;

    #@13e
    .line 171
    :goto_6
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    #@141
    .line 172
    const/4 v13, 0x1

    #@142
    return v13

    #@143
    .line 169
    :cond_6
    const/4 v9, 0x0

    #@144
    .restart local v9    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_6

    #@145
    .line 176
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_b
    const-string/jumbo v13, "com.android.internal.view.IInputMethod"

    #@148
    move-object/from16 v0, p2

    #@14a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14d
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@150
    move-result v13

    #@151
    if-eqz v13, :cond_7

    #@153
    .line 179
    sget-object v13, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@155
    move-object/from16 v0, p2

    #@157
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15a
    move-result-object v5

    #@15b
    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    #@15d
    .line 184
    :goto_7
    invoke-virtual {p0, v5}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    #@160
    .line 185
    const/4 v13, 0x1

    #@161
    return v13

    #@162
    .line 182
    :cond_7
    const/4 v5, 0x0

    #@163
    .local v5, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_7

    #@164
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
