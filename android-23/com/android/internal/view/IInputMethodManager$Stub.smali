.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_finishInput:I = 0x9

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x17

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1e

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_hideMySoftInput:I = 0x11

.field static final TRANSACTION_hideSoftInput:I = 0xb

.field static final TRANSACTION_notifySuggestionPicked:I = 0x16

.field static final TRANSACTION_notifyUserAction:I = 0x1f

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x15

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1d

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x18

.field static final TRANSACTION_setImeWindowStatus:I = 0x14

.field static final TRANSACTION_setInputMethod:I = 0xf

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x10

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1c

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1b

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xe

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xd

.field static final TRANSACTION_showMySoftInput:I = 0x12

.field static final TRANSACTION_showSoftInput:I = 0xa

.field static final TRANSACTION_startInput:I = 0x8

.field static final TRANSACTION_switchToLastInputMethod:I = 0x19

.field static final TRANSACTION_switchToNextInputMethod:I = 0x1a

.field static final TRANSACTION_updateStatusIcon:I = 0x13

.field static final TRANSACTION_windowGainedFocus:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "com.android.internal.view.IInputMethodManager"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 460
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    #@1d
    move-result-object v29

    #@1e
    .line 55
    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 56
    move-object/from16 v0, p3

    #@23
    move-object/from16 v1, v29

    #@25
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@28
    .line 57
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 61
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    #@35
    move-result-object v29

    #@36
    .line 63
    .restart local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 64
    move-object/from16 v0, p3

    #@3b
    move-object/from16 v1, v29

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@40
    .line 65
    const/4 v3, 0x1

    #@41
    return v3

    #@42
    .line 69
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v15

    #@4e
    .line 73
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_0

    #@54
    const/16 v20, 0x1

    #@56
    .line 74
    .local v20, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    #@58
    move/from16 v1, v20

    #@5a
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    #@5d
    move-result-object v30

    #@5e
    .line 75
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    .line 76
    move-object/from16 v0, p3

    #@63
    move-object/from16 v1, v30

    #@65
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@68
    .line 77
    const/4 v3, 0x1

    #@69
    return v3

    #@6a
    .line 73
    .end local v20    # "_arg1":Z
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/16 v20, 0x0

    #@6c
    .restart local v20    # "_arg1":Z
    goto :goto_0

    #@6d
    .line 81
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@70
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@78
    move-result-object v26

    #@79
    .line 83
    .local v26, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 84
    if-eqz v26, :cond_1

    #@7e
    .line 85
    const/4 v3, 0x1

    #@7f
    move-object/from16 v0, p3

    #@81
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 86
    const/4 v3, 0x1

    #@85
    move-object/from16 v0, v26

    #@87
    move-object/from16 v1, p3

    #@89
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@8c
    .line 91
    :goto_1
    const/4 v3, 0x1

    #@8d
    return v3

    #@8e
    .line 89
    :cond_1
    const/4 v3, 0x0

    #@8f
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_1

    #@95
    .line 95
    .end local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    #@a0
    move-result-object v28

    #@a1
    .line 97
    .local v28, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 98
    move-object/from16 v0, p3

    #@a6
    move-object/from16 v1, v28

    #@a8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@ab
    .line 99
    const/4 v3, 0x1

    #@ac
    return v3

    #@ad
    .line 103
    .end local v28    # "_result":Ljava/util/List;
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v3

    #@b9
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@bc
    move-result-object v4

    #@bd
    .line 107
    .local v4, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c0
    move-result-object v3

    #@c1
    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@c4
    move-result-object v18

    #@c5
    .line 109
    .local v18, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v6

    #@c9
    .line 111
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v7

    #@cd
    .line 112
    .local v7, "_arg3":I
    move-object/from16 v0, p0

    #@cf
    move-object/from16 v1, v18

    #@d1
    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    #@d4
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d7
    .line 114
    const/4 v3, 0x1

    #@d8
    return v3

    #@d9
    .line 118
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@dc
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e4
    move-result-object v3

    #@e5
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@e8
    move-result-object v4

    #@e9
    .line 121
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    #@ee
    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 123
    const/4 v3, 0x1

    #@f2
    return v3

    #@f3
    .line 127
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@f6
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fe
    move-result-object v3

    #@ff
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@102
    move-result-object v4

    #@103
    .line 131
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@106
    move-result-object v3

    #@107
    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@10a
    move-result-object v18

    #@10b
    .line 133
    .restart local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v3

    #@10f
    if-eqz v3, :cond_2

    #@111
    .line 134
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@113
    move-object/from16 v0, p2

    #@115
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@118
    move-result-object v23

    #@119
    check-cast v23, Landroid/view/inputmethod/EditorInfo;

    #@11b
    .line 140
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v7

    #@11f
    .line 141
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, v18

    #@123
    move-object/from16 v2, v23

    #@125
    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    #@128
    move-result-object v27

    #@129
    .line 142
    .local v27, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 143
    if-eqz v27, :cond_3

    #@12e
    .line 144
    const/4 v3, 0x1

    #@12f
    move-object/from16 v0, p3

    #@131
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    .line 145
    const/4 v3, 0x1

    #@135
    move-object/from16 v0, v27

    #@137
    move-object/from16 v1, p3

    #@139
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@13c
    .line 150
    :goto_3
    const/4 v3, 0x1

    #@13d
    return v3

    #@13e
    .line 137
    .end local v7    # "_arg3":I
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_2
    const/16 v23, 0x0

    #@140
    .local v23, "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    #@141
    .line 148
    .end local v23    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .restart local v7    # "_arg3":I
    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_3
    const/4 v3, 0x0

    #@142
    move-object/from16 v0, p3

    #@144
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@147
    goto :goto_3

    #@148
    .line 154
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@153
    move-result-object v3

    #@154
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@157
    move-result-object v4

    #@158
    .line 157
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@15a
    invoke-virtual {v0, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    #@15d
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@160
    .line 159
    const/4 v3, 0x1

    #@161
    return v3

    #@162
    .line 163
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@165
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16d
    move-result-object v3

    #@16e
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@171
    move-result-object v4

    #@172
    .line 167
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v17

    #@176
    .line 169
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@179
    move-result v3

    #@17a
    if-eqz v3, :cond_4

    #@17c
    .line 170
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@183
    move-result-object v22

    #@184
    check-cast v22, Landroid/os/ResultReceiver;

    #@186
    .line 175
    :goto_4
    move-object/from16 v0, p0

    #@188
    move/from16 v1, v17

    #@18a
    move-object/from16 v2, v22

    #@18c
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    #@18f
    move-result v31

    #@190
    .line 176
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 177
    if-eqz v31, :cond_5

    #@195
    const/4 v3, 0x1

    #@196
    :goto_5
    move-object/from16 v0, p3

    #@198
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19b
    .line 178
    const/4 v3, 0x1

    #@19c
    return v3

    #@19d
    .line 173
    .end local v31    # "_result":Z
    :cond_4
    const/16 v22, 0x0

    #@19f
    .local v22, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    #@1a0
    .line 177
    .end local v22    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v31    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    #@1a1
    goto :goto_5

    #@1a2
    .line 182
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@1a5
    move-object/from16 v0, p2

    #@1a7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ad
    move-result-object v3

    #@1ae
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@1b1
    move-result-object v4

    #@1b2
    .line 186
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v17

    #@1b6
    .line 188
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b9
    move-result v3

    #@1ba
    if-eqz v3, :cond_6

    #@1bc
    .line 189
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c3
    move-result-object v22

    #@1c4
    check-cast v22, Landroid/os/ResultReceiver;

    #@1c6
    .line 194
    :goto_6
    move-object/from16 v0, p0

    #@1c8
    move/from16 v1, v17

    #@1ca
    move-object/from16 v2, v22

    #@1cc
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    #@1cf
    move-result v31

    #@1d0
    .line 195
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3
    .line 196
    if-eqz v31, :cond_7

    #@1d5
    const/4 v3, 0x1

    #@1d6
    :goto_7
    move-object/from16 v0, p3

    #@1d8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1db
    .line 197
    const/4 v3, 0x1

    #@1dc
    return v3

    #@1dd
    .line 192
    .end local v31    # "_result":Z
    :cond_6
    const/16 v22, 0x0

    #@1df
    .restart local v22    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_6

    #@1e0
    .line 196
    .end local v22    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v31    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    #@1e1
    goto :goto_7

    #@1e2
    .line 201
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1ed
    move-result-object v3

    #@1ee
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@1f1
    move-result-object v4

    #@1f2
    .line 205
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f5
    move-result-object v5

    #@1f6
    .line 207
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f9
    move-result v6

    #@1fa
    .line 209
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fd
    move-result v7

    #@1fe
    .line 211
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@201
    move-result v8

    #@202
    .line 213
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@205
    move-result v3

    #@206
    if-eqz v3, :cond_8

    #@208
    .line 214
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20a
    move-object/from16 v0, p2

    #@20c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20f
    move-result-object v9

    #@210
    check-cast v9, Landroid/view/inputmethod/EditorInfo;

    #@212
    .line 220
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@215
    move-result-object v3

    #@216
    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@219
    move-result-object v10

    #@21a
    .local v10, "_arg6":Lcom/android/internal/view/IInputContext;
    move-object/from16 v3, p0

    #@21c
    .line 221
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/view/IInputMethodManager$Stub;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    #@21f
    move-result-object v27

    #@220
    .line 222
    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@223
    .line 223
    if-eqz v27, :cond_9

    #@225
    .line 224
    const/4 v3, 0x1

    #@226
    move-object/from16 v0, p3

    #@228
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22b
    .line 225
    const/4 v3, 0x1

    #@22c
    move-object/from16 v0, v27

    #@22e
    move-object/from16 v1, p3

    #@230
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@233
    .line 230
    :goto_9
    const/4 v3, 0x1

    #@234
    return v3

    #@235
    .line 217
    .end local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_8
    const/4 v9, 0x0

    #@236
    .local v9, "_arg5":Landroid/view/inputmethod/EditorInfo;
    goto :goto_8

    #@237
    .line 228
    .end local v9    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_9
    const/4 v3, 0x0

    #@238
    move-object/from16 v0, p3

    #@23a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    goto :goto_9

    #@23e
    .line 234
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@246
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@249
    move-result-object v3

    #@24a
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@24d
    move-result-object v4

    #@24e
    .line 238
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v17

    #@252
    .line 239
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@254
    move/from16 v1, v17

    #@256
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    #@259
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25c
    .line 241
    const/4 v3, 0x1

    #@25d
    return v3

    #@25e
    .line 245
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@269
    move-result-object v3

    #@26a
    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@26d
    move-result-object v4

    #@26e
    .line 249
    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@271
    move-result-object v19

    #@272
    .line 250
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@274
    move-object/from16 v1, v19

    #@276
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    #@279
    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c
    .line 252
    const/4 v3, 0x1

    #@27d
    return v3

    #@27e
    .line 256
    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@289
    move-result-object v12

    #@28a
    .line 260
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28d
    move-result-object v19

    #@28e
    .line 261
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@290
    move-object/from16 v1, v19

    #@292
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@295
    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298
    .line 263
    const/4 v3, 0x1

    #@299
    return v3

    #@29a
    .line 267
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@29d
    move-object/from16 v0, p2

    #@29f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a2
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a5
    move-result-object v12

    #@2a6
    .line 271
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9
    move-result-object v19

    #@2aa
    .line 273
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v3

    #@2ae
    if-eqz v3, :cond_a

    #@2b0
    .line 274
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b7
    move-result-object v24

    #@2b8
    check-cast v24, Landroid/view/inputmethod/InputMethodSubtype;

    #@2ba
    .line 279
    :goto_a
    move-object/from16 v0, p0

    #@2bc
    move-object/from16 v1, v19

    #@2be
    move-object/from16 v2, v24

    #@2c0
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@2c3
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c6
    .line 281
    const/4 v3, 0x1

    #@2c7
    return v3

    #@2c8
    .line 277
    :cond_a
    const/16 v24, 0x0

    #@2ca
    .local v24, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_a

    #@2cb
    .line 285
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d3
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d6
    move-result-object v12

    #@2d7
    .line 289
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2da
    move-result v17

    #@2db
    .line 290
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@2dd
    move/from16 v1, v17

    #@2df
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    #@2e2
    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e5
    .line 292
    const/4 v3, 0x1

    #@2e6
    return v3

    #@2e7
    .line 296
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ef
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f2
    move-result-object v12

    #@2f3
    .line 300
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f6
    move-result v17

    #@2f7
    .line 301
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@2f9
    move/from16 v1, v17

    #@2fb
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    #@2fe
    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 303
    const/4 v3, 0x1

    #@302
    return v3

    #@303
    .line 307
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@306
    move-object/from16 v0, p2

    #@308
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30b
    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30e
    move-result-object v12

    #@30f
    .line 311
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@312
    move-result-object v19

    #@313
    .line 313
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v6

    #@317
    .line 314
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@319
    move-object/from16 v1, v19

    #@31b
    invoke-virtual {v0, v12, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@31e
    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@321
    .line 316
    const/4 v3, 0x1

    #@322
    return v3

    #@323
    .line 320
    .end local v6    # "_arg2":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@326
    move-object/from16 v0, p2

    #@328
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32b
    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32e
    move-result-object v12

    #@32f
    .line 324
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@332
    move-result v17

    #@333
    .line 326
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v6

    #@337
    .line 327
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@339
    move/from16 v1, v17

    #@33b
    invoke-virtual {v0, v12, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@33e
    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@341
    .line 329
    const/4 v3, 0x1

    #@342
    return v3

    #@343
    .line 333
    .end local v6    # "_arg2":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@346
    move-object/from16 v0, p2

    #@348
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34b
    .line 335
    sget-object v3, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34d
    move-object/from16 v0, p2

    #@34f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@352
    move-result-object v16

    #@353
    check-cast v16, [Landroid/text/style/SuggestionSpan;

    #@355
    .line 336
    .local v16, "_arg0":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, p0

    #@357
    move-object/from16 v1, v16

    #@359
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    #@35c
    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35f
    .line 338
    const/4 v3, 0x1

    #@360
    return v3

    #@361
    .line 342
    .end local v16    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@369
    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36c
    move-result v3

    #@36d
    if-eqz v3, :cond_b

    #@36f
    .line 345
    sget-object v3, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    #@371
    move-object/from16 v0, p2

    #@373
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@376
    move-result-object v13

    #@377
    check-cast v13, Landroid/text/style/SuggestionSpan;

    #@379
    .line 351
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37c
    move-result-object v19

    #@37d
    .line 353
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@380
    move-result v6

    #@381
    .line 354
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    #@383
    move-object/from16 v1, v19

    #@385
    invoke-virtual {v0, v13, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    #@388
    move-result v31

    #@389
    .line 355
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38c
    .line 356
    if-eqz v31, :cond_c

    #@38e
    const/4 v3, 0x1

    #@38f
    :goto_c
    move-object/from16 v0, p3

    #@391
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@394
    .line 357
    const/4 v3, 0x1

    #@395
    return v3

    #@396
    .line 348
    .end local v6    # "_arg2":I
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Z
    :cond_b
    const/4 v13, 0x0

    #@397
    .local v13, "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_b

    #@398
    .line 356
    .end local v13    # "_arg0":Landroid/text/style/SuggestionSpan;
    .restart local v6    # "_arg2":I
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_result":Z
    :cond_c
    const/4 v3, 0x0

    #@399
    goto :goto_c

    #@39a
    .line 361
    .end local v6    # "_arg2":I
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Z
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a2
    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@3a5
    move-result-object v26

    #@3a6
    .line 363
    .restart local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a9
    .line 364
    if-eqz v26, :cond_d

    #@3ab
    .line 365
    const/4 v3, 0x1

    #@3ac
    move-object/from16 v0, p3

    #@3ae
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3b1
    .line 366
    const/4 v3, 0x1

    #@3b2
    move-object/from16 v0, v26

    #@3b4
    move-object/from16 v1, p3

    #@3b6
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@3b9
    .line 371
    :goto_d
    const/4 v3, 0x1

    #@3ba
    return v3

    #@3bb
    .line 369
    :cond_d
    const/4 v3, 0x0

    #@3bc
    move-object/from16 v0, p3

    #@3be
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3c1
    goto :goto_d

    #@3c2
    .line 375
    .end local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@3c5
    move-object/from16 v0, p2

    #@3c7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ca
    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cd
    move-result v3

    #@3ce
    if-eqz v3, :cond_e

    #@3d0
    .line 378
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d2
    move-object/from16 v0, p2

    #@3d4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d7
    move-result-object v14

    #@3d8
    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    #@3da
    .line 383
    :goto_e
    move-object/from16 v0, p0

    #@3dc
    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@3df
    move-result v31

    #@3e0
    .line 384
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 385
    if-eqz v31, :cond_f

    #@3e5
    const/4 v3, 0x1

    #@3e6
    :goto_f
    move-object/from16 v0, p3

    #@3e8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3eb
    .line 386
    const/4 v3, 0x1

    #@3ec
    return v3

    #@3ed
    .line 381
    .end local v31    # "_result":Z
    :cond_e
    const/4 v14, 0x0

    #@3ee
    .local v14, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_e

    #@3ef
    .line 385
    .end local v14    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v31    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    #@3f0
    goto :goto_f

    #@3f1
    .line 390
    .end local v31    # "_result":Z
    :sswitch_19
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@3f4
    move-object/from16 v0, p2

    #@3f6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f9
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3fc
    move-result-object v12

    #@3fd
    .line 393
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@3ff
    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    #@402
    move-result v31

    #@403
    .line 394
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@406
    .line 395
    if-eqz v31, :cond_10

    #@408
    const/4 v3, 0x1

    #@409
    :goto_10
    move-object/from16 v0, p3

    #@40b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@40e
    .line 396
    const/4 v3, 0x1

    #@40f
    return v3

    #@410
    .line 395
    :cond_10
    const/4 v3, 0x0

    #@411
    goto :goto_10

    #@412
    .line 400
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_result":Z
    :sswitch_1a
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@415
    move-object/from16 v0, p2

    #@417
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41a
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41d
    move-result-object v12

    #@41e
    .line 404
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@421
    move-result v3

    #@422
    if-eqz v3, :cond_11

    #@424
    const/16 v20, 0x1

    #@426
    .line 405
    .restart local v20    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    #@428
    move/from16 v1, v20

    #@42a
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    #@42d
    move-result v31

    #@42e
    .line 406
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@431
    .line 407
    if-eqz v31, :cond_12

    #@433
    const/4 v3, 0x1

    #@434
    :goto_12
    move-object/from16 v0, p3

    #@436
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@439
    .line 408
    const/4 v3, 0x1

    #@43a
    return v3

    #@43b
    .line 404
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :cond_11
    const/16 v20, 0x0

    #@43d
    .restart local v20    # "_arg1":Z
    goto :goto_11

    #@43e
    .line 407
    .restart local v31    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    #@43f
    goto :goto_12

    #@440
    .line 412
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :sswitch_1b
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@443
    move-object/from16 v0, p2

    #@445
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@448
    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44b
    move-result-object v12

    #@44c
    .line 415
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@44e
    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    #@451
    move-result v31

    #@452
    .line 416
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@455
    .line 417
    if-eqz v31, :cond_13

    #@457
    const/4 v3, 0x1

    #@458
    :goto_13
    move-object/from16 v0, p3

    #@45a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@45d
    .line 418
    const/4 v3, 0x1

    #@45e
    return v3

    #@45f
    .line 417
    :cond_13
    const/4 v3, 0x0

    #@460
    goto :goto_13

    #@461
    .line 422
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_result":Z
    :sswitch_1c
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@464
    move-object/from16 v0, p2

    #@466
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@469
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46c
    move-result-object v15

    #@46d
    .line 426
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@470
    move-result v3

    #@471
    if-eqz v3, :cond_14

    #@473
    const/16 v20, 0x1

    #@475
    .line 427
    .restart local v20    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@477
    move/from16 v1, v20

    #@479
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    #@47c
    move-result v31

    #@47d
    .line 428
    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@480
    .line 429
    if-eqz v31, :cond_15

    #@482
    const/4 v3, 0x1

    #@483
    :goto_15
    move-object/from16 v0, p3

    #@485
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@488
    .line 430
    const/4 v3, 0x1

    #@489
    return v3

    #@48a
    .line 426
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :cond_14
    const/16 v20, 0x0

    #@48c
    .restart local v20    # "_arg1":Z
    goto :goto_14

    #@48d
    .line 429
    .restart local v31    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    #@48e
    goto :goto_15

    #@48f
    .line 434
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :sswitch_1d
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@492
    move-object/from16 v0, p2

    #@494
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@497
    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49a
    move-result-object v15

    #@49b
    .line 438
    .restart local v15    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@49d
    move-object/from16 v0, p2

    #@49f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@4a2
    move-result-object v21

    #@4a3
    check-cast v21, [Landroid/view/inputmethod/InputMethodSubtype;

    #@4a5
    .line 439
    .local v21, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    #@4a7
    move-object/from16 v1, v21

    #@4a9
    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    #@4ac
    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4af
    .line 441
    const/4 v3, 0x1

    #@4b0
    return v3

    #@4b1
    .line 445
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1e
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@4b4
    move-object/from16 v0, p2

    #@4b6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b9
    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    #@4bc
    move-result v25

    #@4bd
    .line 447
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c0
    .line 448
    move-object/from16 v0, p3

    #@4c2
    move/from16 v1, v25

    #@4c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c7
    .line 449
    const/4 v3, 0x1

    #@4c8
    return v3

    #@4c9
    .line 453
    .end local v25    # "_result":I
    :sswitch_1f
    const-string/jumbo v3, "com.android.internal.view.IInputMethodManager"

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d1
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d4
    move-result v11

    #@4d5
    .line 456
    .local v11, "_arg0":I
    move-object/from16 v0, p0

    #@4d7
    invoke-virtual {v0, v11}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    #@4da
    .line 457
    const/4 v3, 0x1

    #@4db
    return v3

    #@4dc
    .line 44
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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
