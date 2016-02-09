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
    .locals 12
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
    .line 184
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    .line 55
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    #@1d
    .line 56
    const/4 v11, 0x1

    #@1e
    return v11

    #@1f
    .line 60
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@22
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v11

    #@29
    if-eqz v11, :cond_0

    #@2b
    .line 63
    sget-object v11, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/view/inputmethod/InputBinding;

    #@33
    .line 68
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    #@36
    .line 69
    const/4 v11, 0x1

    #@37
    return v11

    #@38
    .line 66
    :cond_0
    const/4 v3, 0x0

    #@39
    .local v3, "_arg0":Landroid/view/inputmethod/InputBinding;
    goto :goto_0

    #@3a
    .line 73
    .end local v3    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :sswitch_3
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@3d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    #@43
    .line 75
    const/4 v11, 0x1

    #@44
    return v11

    #@45
    .line 79
    :sswitch_4
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@48
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v11

    #@4f
    invoke-static {v11}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@52
    move-result-object v5

    #@53
    .line 83
    .local v5, "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v11

    #@57
    if-eqz v11, :cond_1

    #@59
    .line 84
    sget-object v11, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e
    move-result-object v8

    #@5f
    check-cast v8, Landroid/view/inputmethod/EditorInfo;

    #@61
    .line 89
    :goto_1
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    #@64
    .line 90
    const/4 v11, 0x1

    #@65
    return v11

    #@66
    .line 87
    :cond_1
    const/4 v8, 0x0

    #@67
    .local v8, "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_1

    #@68
    .line 94
    .end local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_5
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@6b
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@71
    move-result-object v11

    #@72
    invoke-static {v11}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@75
    move-result-object v5

    #@76
    .line 98
    .restart local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v11

    #@7a
    if-eqz v11, :cond_2

    #@7c
    .line 99
    sget-object v11, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81
    move-result-object v8

    #@82
    check-cast v8, Landroid/view/inputmethod/EditorInfo;

    #@84
    .line 104
    :goto_2
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/view/IInputMethod$Stub;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    #@87
    .line 105
    const/4 v11, 0x1

    #@88
    return v11

    #@89
    .line 102
    :cond_2
    const/4 v8, 0x0

    #@8a
    .restart local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    #@8b
    .line 109
    .end local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_6
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@8e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v11

    #@95
    if-eqz v11, :cond_3

    #@97
    .line 112
    sget-object v11, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v2

    #@9d
    check-cast v2, Landroid/view/InputChannel;

    #@9f
    .line 118
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a2
    move-result-object v11

    #@a3
    invoke-static {v11}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    #@a6
    move-result-object v9

    #@a7
    .line 119
    .local v9, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    #@aa
    .line 120
    const/4 v11, 0x1

    #@ab
    return v11

    #@ac
    .line 115
    .end local v9    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :cond_3
    const/4 v2, 0x0

    #@ad
    .local v2, "_arg0":Landroid/view/InputChannel;
    goto :goto_3

    #@ae
    .line 124
    .end local v2    # "_arg0":Landroid/view/InputChannel;
    :sswitch_7
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@b1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b7
    move-result-object v11

    #@b8
    invoke-static {v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    #@bb
    move-result-object v6

    #@bc
    .line 128
    .local v6, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v11

    #@c0
    if-eqz v11, :cond_4

    #@c2
    const/4 v10, 0x1

    #@c3
    .line 129
    .local v10, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v6, v10}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    #@c6
    .line 130
    const/4 v11, 0x1

    #@c7
    return v11

    #@c8
    .line 128
    .end local v10    # "_arg1":Z
    :cond_4
    const/4 v10, 0x0

    #@c9
    .restart local v10    # "_arg1":Z
    goto :goto_4

    #@ca
    .line 134
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    .end local v10    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@cd
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d3
    move-result-object v11

    #@d4
    invoke-static {v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    #@d7
    move-result-object v6

    #@d8
    .line 137
    .restart local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v6}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    #@db
    .line 138
    const/4 v11, 0x1

    #@dc
    return v11

    #@dd
    .line 142
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_9
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@e0
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v0

    #@e7
    .line 146
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v11

    #@eb
    if-eqz v11, :cond_5

    #@ed
    .line 147
    sget-object v11, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ef
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2
    move-result-object v7

    #@f3
    check-cast v7, Landroid/os/ResultReceiver;

    #@f5
    .line 152
    :goto_5
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    #@f8
    .line 153
    const/4 v11, 0x1

    #@f9
    return v11

    #@fa
    .line 150
    :cond_5
    const/4 v7, 0x0

    #@fb
    .local v7, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_5

    #@fc
    .line 157
    .end local v0    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_a
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@ff
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v0

    #@106
    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v11

    #@10a
    if-eqz v11, :cond_6

    #@10c
    .line 162
    sget-object v11, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@111
    move-result-object v7

    #@112
    check-cast v7, Landroid/os/ResultReceiver;

    #@114
    .line 167
    :goto_6
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    #@117
    .line 168
    const/4 v11, 0x1

    #@118
    return v11

    #@119
    .line 165
    :cond_6
    const/4 v7, 0x0

    #@11a
    .restart local v7    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_6

    #@11b
    .line 172
    .end local v0    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_b
    const-string/jumbo v11, "com.android.internal.view.IInputMethod"

    #@11e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@121
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v11

    #@125
    if-eqz v11, :cond_7

    #@127
    .line 175
    sget-object v11, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@129
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12c
    move-result-object v4

    #@12d
    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    #@12f
    .line 180
    :goto_7
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    #@132
    .line 181
    const/4 v11, 0x1

    #@133
    return v11

    #@134
    .line 178
    :cond_7
    const/4 v4, 0x0

    #@135
    .local v4, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_7

    #@136
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
