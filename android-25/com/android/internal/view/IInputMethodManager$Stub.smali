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

.field static final TRANSACTION_clearLastInputMethodWindowForTransition:I = 0x1e

.field static final TRANSACTION_createInputContentUriToken:I = 0x1f

.field static final TRANSACTION_finishInput:I = 0x8

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x16

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1d

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_hideMySoftInput:I = 0x10

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_notifySuggestionPicked:I = 0x15

.field static final TRANSACTION_notifyUserAction:I = 0x20

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x14

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1c

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x17

.field static final TRANSACTION_setImeWindowStatus:I = 0x13

.field static final TRANSACTION_setInputMethod:I = 0xe

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0xf

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1b

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1a

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xd

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xc

.field static final TRANSACTION_showMySoftInput:I = 0x11

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInputOrWindowGainedFocus:I = 0xb

.field static final TRANSACTION_switchToLastInputMethod:I = 0x18

.field static final TRANSACTION_switchToNextInputMethod:I = 0x19

.field static final TRANSACTION_updateStatusIcon:I = 0x12


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
    .locals 38
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
    .line 465
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    #@1d
    move-result-object v35

    #@1e
    .line 55
    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 56
    move-object/from16 v0, p3

    #@23
    move-object/from16 v1, v35

    #@25
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@28
    .line 57
    const/4 v4, 0x1

    #@29
    return v4

    #@2a
    .line 61
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    #@35
    move-result-object v35

    #@36
    .line 63
    .restart local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 64
    move-object/from16 v0, p3

    #@3b
    move-object/from16 v1, v35

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@40
    .line 65
    const/4 v4, 0x1

    #@41
    return v4

    #@42
    .line 69
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v18

    #@4e
    .line 73
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_0

    #@54
    const/16 v24, 0x1

    #@56
    .line 74
    .local v24, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, v18

    #@5a
    move/from16 v2, v24

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    #@5f
    move-result-object v36

    #@60
    .line 75
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 76
    move-object/from16 v0, p3

    #@65
    move-object/from16 v1, v36

    #@67
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@6a
    .line 77
    const/4 v4, 0x1

    #@6b
    return v4

    #@6c
    .line 73
    .end local v24    # "_arg1":Z
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/16 v24, 0x0

    #@6e
    goto :goto_0

    #@6f
    .line 81
    .end local v18    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@7a
    move-result-object v31

    #@7b
    .line 83
    .local v31, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 84
    if-eqz v31, :cond_1

    #@80
    .line 85
    const/4 v4, 0x1

    #@81
    move-object/from16 v0, p3

    #@83
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 86
    const/4 v4, 0x1

    #@87
    move-object/from16 v0, v31

    #@89
    move-object/from16 v1, p3

    #@8b
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@8e
    .line 91
    :goto_1
    const/4 v4, 0x1

    #@8f
    return v4

    #@90
    .line 89
    :cond_1
    const/4 v4, 0x0

    #@91
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    goto :goto_1

    #@97
    .line 95
    .end local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@9a
    move-object/from16 v0, p2

    #@9c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    #@a2
    move-result-object v34

    #@a3
    .line 97
    .local v34, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 98
    move-object/from16 v0, p3

    #@a8
    move-object/from16 v1, v34

    #@aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@ad
    .line 99
    const/4 v4, 0x1

    #@ae
    return v4

    #@af
    .line 103
    .end local v34    # "_result":Ljava/util/List;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@b2
    move-object/from16 v0, p2

    #@b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ba
    move-result-object v4

    #@bb
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@be
    move-result-object v17

    #@bf
    .line 107
    .local v17, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c2
    move-result-object v4

    #@c3
    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@c6
    move-result-object v22

    #@c7
    .line 109
    .local v22, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v26

    #@cb
    .line 111
    .local v26, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v8

    #@cf
    .line 112
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@d1
    move-object/from16 v1, v17

    #@d3
    move-object/from16 v2, v22

    #@d5
    move/from16 v3, v26

    #@d7
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    #@da
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd
    .line 114
    const/4 v4, 0x1

    #@de
    return v4

    #@df
    .line 118
    .end local v8    # "_arg3":I
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v22    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v26    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@e2
    move-object/from16 v0, p2

    #@e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e7
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ea
    move-result-object v4

    #@eb
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@ee
    move-result-object v17

    #@ef
    .line 121
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@f1
    move-object/from16 v1, v17

    #@f3
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    #@f6
    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 123
    const/4 v4, 0x1

    #@fa
    return v4

    #@fb
    .line 127
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@fe
    move-object/from16 v0, p2

    #@100
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@103
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@106
    move-result-object v4

    #@107
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@10a
    move-result-object v17

    #@10b
    .line 130
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v17

    #@10f
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    #@112
    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 132
    const/4 v4, 0x1

    #@116
    return v4

    #@117
    .line 136
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@122
    move-result-object v4

    #@123
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@126
    move-result-object v17

    #@127
    .line 140
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a
    move-result v20

    #@12b
    .line 142
    .local v20, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e
    move-result v4

    #@12f
    if-eqz v4, :cond_2

    #@131
    .line 143
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@133
    move-object/from16 v0, p2

    #@135
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@138
    move-result-object v27

    #@139
    check-cast v27, Landroid/os/ResultReceiver;

    #@13b
    .line 148
    :goto_2
    move-object/from16 v0, p0

    #@13d
    move-object/from16 v1, v17

    #@13f
    move/from16 v2, v20

    #@141
    move-object/from16 v3, v27

    #@143
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    #@146
    move-result v37

    #@147
    .line 149
    .local v37, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14a
    .line 150
    if-eqz v37, :cond_3

    #@14c
    const/4 v4, 0x1

    #@14d
    :goto_3
    move-object/from16 v0, p3

    #@14f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@152
    .line 151
    const/4 v4, 0x1

    #@153
    return v4

    #@154
    .line 146
    .end local v37    # "_result":Z
    :cond_2
    const/16 v27, 0x0

    #@156
    .local v27, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_2

    #@157
    .line 150
    .end local v27    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v37    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    #@158
    goto :goto_3

    #@159
    .line 155
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v37    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@161
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@164
    move-result-object v4

    #@165
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@168
    move-result-object v17

    #@169
    .line 159
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16c
    move-result v20

    #@16d
    .line 161
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v4

    #@171
    if-eqz v4, :cond_4

    #@173
    .line 162
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@175
    move-object/from16 v0, p2

    #@177
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17a
    move-result-object v27

    #@17b
    check-cast v27, Landroid/os/ResultReceiver;

    #@17d
    .line 167
    :goto_4
    move-object/from16 v0, p0

    #@17f
    move-object/from16 v1, v17

    #@181
    move/from16 v2, v20

    #@183
    move-object/from16 v3, v27

    #@185
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    #@188
    move-result v37

    #@189
    .line 168
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 169
    if-eqz v37, :cond_5

    #@18e
    const/4 v4, 0x1

    #@18f
    :goto_5
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 170
    const/4 v4, 0x1

    #@195
    return v4

    #@196
    .line 165
    .end local v37    # "_result":Z
    :cond_4
    const/16 v27, 0x0

    #@198
    .restart local v27    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    #@199
    .line 169
    .end local v27    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v37    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    #@19a
    goto :goto_5

    #@19b
    .line 174
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v37    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@19e
    move-object/from16 v0, p2

    #@1a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v5

    #@1a7
    .line 178
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1aa
    move-result-object v4

    #@1ab
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@1ae
    move-result-object v6

    #@1af
    .line 180
    .local v6, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b2
    move-result-object v7

    #@1b3
    .line 182
    .local v7, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b6
    move-result v8

    #@1b7
    .line 184
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ba
    move-result v9

    #@1bb
    .line 186
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v10

    #@1bf
    .line 188
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c2
    move-result v4

    #@1c3
    if-eqz v4, :cond_6

    #@1c5
    .line 189
    sget-object v4, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cc
    move-result-object v11

    #@1cd
    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    #@1cf
    .line 195
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d2
    move-result-object v4

    #@1d3
    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@1d6
    move-result-object v12

    #@1d7
    .line 197
    .local v12, "_arg7":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v13

    #@1db
    .local v13, "_arg8":I
    move-object/from16 v4, p0

    #@1dd
    .line 198
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    #@1e0
    move-result-object v33

    #@1e1
    .line 199
    .local v33, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 200
    if-eqz v33, :cond_7

    #@1e6
    .line 201
    const/4 v4, 0x1

    #@1e7
    move-object/from16 v0, p3

    #@1e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec
    .line 202
    const/4 v4, 0x1

    #@1ed
    move-object/from16 v0, v33

    #@1ef
    move-object/from16 v1, p3

    #@1f1
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f4
    .line 207
    :goto_7
    const/4 v4, 0x1

    #@1f5
    return v4

    #@1f6
    .line 192
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_6
    const/4 v11, 0x0

    #@1f7
    .local v11, "_arg6":Landroid/view/inputmethod/EditorInfo;
    goto :goto_6

    #@1f8
    .line 205
    .end local v11    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .restart local v13    # "_arg8":I
    .restart local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v4, 0x0

    #@1f9
    move-object/from16 v0, p3

    #@1fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1fe
    goto :goto_7

    #@1ff
    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20a
    move-result-object v4

    #@20b
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@20e
    move-result-object v17

    #@20f
    .line 215
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@212
    move-result v20

    #@213
    .line 216
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@215
    move-object/from16 v1, v17

    #@217
    move/from16 v2, v20

    #@219
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    #@21c
    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21f
    .line 218
    const/4 v4, 0x1

    #@220
    return v4

    #@221
    .line 222
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22c
    move-result-object v4

    #@22d
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@230
    move-result-object v17

    #@231
    .line 226
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@234
    move-result-object v23

    #@235
    .line 227
    .local v23, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@237
    move-object/from16 v1, v17

    #@239
    move-object/from16 v2, v23

    #@23b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    #@23e
    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@241
    .line 229
    const/4 v4, 0x1

    #@242
    return v4

    #@243
    .line 233
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@246
    move-object/from16 v0, p2

    #@248
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24b
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@24e
    move-result-object v14

    #@24f
    .line 237
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@252
    move-result-object v23

    #@253
    .line 238
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@255
    move-object/from16 v1, v23

    #@257
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@25a
    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25d
    .line 240
    const/4 v4, 0x1

    #@25e
    return v4

    #@25f
    .line 244
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@262
    move-object/from16 v0, p2

    #@264
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@267
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26a
    move-result-object v14

    #@26b
    .line 248
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26e
    move-result-object v23

    #@26f
    .line 250
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@272
    move-result v4

    #@273
    if-eqz v4, :cond_8

    #@275
    .line 251
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@277
    move-object/from16 v0, p2

    #@279
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27c
    move-result-object v28

    #@27d
    check-cast v28, Landroid/view/inputmethod/InputMethodSubtype;

    #@27f
    .line 256
    :goto_8
    move-object/from16 v0, p0

    #@281
    move-object/from16 v1, v23

    #@283
    move-object/from16 v2, v28

    #@285
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    #@288
    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@28b
    .line 258
    const/4 v4, 0x1

    #@28c
    return v4

    #@28d
    .line 254
    :cond_8
    const/16 v28, 0x0

    #@28f
    .local v28, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_8

    #@290
    .line 262
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@298
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29b
    move-result-object v14

    #@29c
    .line 266
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29f
    move-result v20

    #@2a0
    .line 267
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@2a2
    move/from16 v1, v20

    #@2a4
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    #@2a7
    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2aa
    .line 269
    const/4 v4, 0x1

    #@2ab
    return v4

    #@2ac
    .line 273
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@2af
    move-object/from16 v0, p2

    #@2b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b4
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b7
    move-result-object v14

    #@2b8
    .line 277
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bb
    move-result v20

    #@2bc
    .line 278
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    #@2be
    move/from16 v1, v20

    #@2c0
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    #@2c3
    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c6
    .line 280
    const/4 v4, 0x1

    #@2c7
    return v4

    #@2c8
    .line 284
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d3
    move-result-object v14

    #@2d4
    .line 288
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d7
    move-result-object v23

    #@2d8
    .line 290
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2db
    move-result v26

    #@2dc
    .line 291
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@2de
    move-object/from16 v1, v23

    #@2e0
    move/from16 v2, v26

    #@2e2
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@2e5
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e8
    .line 293
    const/4 v4, 0x1

    #@2e9
    return v4

    #@2ea
    .line 297
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f2
    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f5
    move-result-object v14

    #@2f6
    .line 301
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f9
    move-result v20

    #@2fa
    .line 303
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fd
    move-result v26

    #@2fe
    .line 304
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@300
    move/from16 v1, v20

    #@302
    move/from16 v2, v26

    #@304
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    #@307
    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30a
    .line 306
    const/4 v4, 0x1

    #@30b
    return v4

    #@30c
    .line 310
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    .end local v26    # "_arg2":I
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@30f
    move-object/from16 v0, p2

    #@311
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@314
    .line 312
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    #@316
    move-object/from16 v0, p2

    #@318
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@31b
    move-result-object v19

    #@31c
    check-cast v19, [Landroid/text/style/SuggestionSpan;

    #@31e
    .line 313
    .local v19, "_arg0":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, p0

    #@320
    move-object/from16 v1, v19

    #@322
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    #@325
    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@328
    .line 315
    const/4 v4, 0x1

    #@329
    return v4

    #@32a
    .line 319
    .end local v19    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@32d
    move-object/from16 v0, p2

    #@32f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@332
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v4

    #@336
    if-eqz v4, :cond_9

    #@338
    .line 322
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33a
    move-object/from16 v0, p2

    #@33c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33f
    move-result-object v15

    #@340
    check-cast v15, Landroid/text/style/SuggestionSpan;

    #@342
    .line 328
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v23

    #@346
    .line 330
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v26

    #@34a
    .line 331
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@34c
    move-object/from16 v1, v23

    #@34e
    move/from16 v2, v26

    #@350
    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    #@353
    move-result v37

    #@354
    .line 332
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@357
    .line 333
    if-eqz v37, :cond_a

    #@359
    const/4 v4, 0x1

    #@35a
    :goto_a
    move-object/from16 v0, p3

    #@35c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35f
    .line 334
    const/4 v4, 0x1

    #@360
    return v4

    #@361
    .line 325
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v37    # "_result":Z
    :cond_9
    const/4 v15, 0x0

    #@362
    .local v15, "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_9

    #@363
    .line 333
    .end local v15    # "_arg0":Landroid/text/style/SuggestionSpan;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v26    # "_arg2":I
    .restart local v37    # "_result":Z
    :cond_a
    const/4 v4, 0x0

    #@364
    goto :goto_a

    #@365
    .line 338
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v37    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@368
    move-object/from16 v0, p2

    #@36a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36d
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    #@370
    move-result-object v31

    #@371
    .line 340
    .restart local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@374
    .line 341
    if-eqz v31, :cond_b

    #@376
    .line 342
    const/4 v4, 0x1

    #@377
    move-object/from16 v0, p3

    #@379
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@37c
    .line 343
    const/4 v4, 0x1

    #@37d
    move-object/from16 v0, v31

    #@37f
    move-object/from16 v1, p3

    #@381
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    #@384
    .line 348
    :goto_b
    const/4 v4, 0x1

    #@385
    return v4

    #@386
    .line 346
    :cond_b
    const/4 v4, 0x0

    #@387
    move-object/from16 v0, p3

    #@389
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38c
    goto :goto_b

    #@38d
    .line 352
    .end local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@390
    move-object/from16 v0, p2

    #@392
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@395
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v4

    #@399
    if-eqz v4, :cond_c

    #@39b
    .line 355
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a2
    move-result-object v16

    #@3a3
    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    #@3a5
    .line 360
    :goto_c
    move-object/from16 v0, p0

    #@3a7
    move-object/from16 v1, v16

    #@3a9
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    #@3ac
    move-result v37

    #@3ad
    .line 361
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b0
    .line 362
    if-eqz v37, :cond_d

    #@3b2
    const/4 v4, 0x1

    #@3b3
    :goto_d
    move-object/from16 v0, p3

    #@3b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b8
    .line 363
    const/4 v4, 0x1

    #@3b9
    return v4

    #@3ba
    .line 358
    .end local v37    # "_result":Z
    :cond_c
    const/16 v16, 0x0

    #@3bc
    .local v16, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_c

    #@3bd
    .line 362
    .end local v16    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v37    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    #@3be
    goto :goto_d

    #@3bf
    .line 367
    .end local v37    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@3c2
    move-object/from16 v0, p2

    #@3c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c7
    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ca
    move-result-object v14

    #@3cb
    .line 370
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@3cd
    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    #@3d0
    move-result v37

    #@3d1
    .line 371
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d4
    .line 372
    if-eqz v37, :cond_e

    #@3d6
    const/4 v4, 0x1

    #@3d7
    :goto_e
    move-object/from16 v0, p3

    #@3d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3dc
    .line 373
    const/4 v4, 0x1

    #@3dd
    return v4

    #@3de
    .line 372
    :cond_e
    const/4 v4, 0x0

    #@3df
    goto :goto_e

    #@3e0
    .line 377
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@3e3
    move-object/from16 v0, p2

    #@3e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e8
    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3eb
    move-result-object v14

    #@3ec
    .line 381
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ef
    move-result v4

    #@3f0
    if-eqz v4, :cond_f

    #@3f2
    const/16 v24, 0x1

    #@3f4
    .line 382
    .restart local v24    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    #@3f6
    move/from16 v1, v24

    #@3f8
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    #@3fb
    move-result v37

    #@3fc
    .line 383
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ff
    .line 384
    if-eqz v37, :cond_10

    #@401
    const/4 v4, 0x1

    #@402
    :goto_10
    move-object/from16 v0, p3

    #@404
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@407
    .line 385
    const/4 v4, 0x1

    #@408
    return v4

    #@409
    .line 381
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :cond_f
    const/16 v24, 0x0

    #@40b
    goto :goto_f

    #@40c
    .line 384
    .restart local v24    # "_arg1":Z
    .restart local v37    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    #@40d
    goto :goto_10

    #@40e
    .line 389
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@411
    move-object/from16 v0, p2

    #@413
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@416
    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@419
    move-result-object v14

    #@41a
    .line 392
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@41c
    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    #@41f
    move-result v37

    #@420
    .line 393
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@423
    .line 394
    if-eqz v37, :cond_11

    #@425
    const/4 v4, 0x1

    #@426
    :goto_11
    move-object/from16 v0, p3

    #@428
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@42b
    .line 395
    const/4 v4, 0x1

    #@42c
    return v4

    #@42d
    .line 394
    :cond_11
    const/4 v4, 0x0

    #@42e
    goto :goto_11

    #@42f
    .line 399
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@432
    move-object/from16 v0, p2

    #@434
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@437
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43a
    move-result-object v18

    #@43b
    .line 403
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43e
    move-result v4

    #@43f
    if-eqz v4, :cond_12

    #@441
    const/16 v24, 0x1

    #@443
    .line 404
    .restart local v24    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@445
    move-object/from16 v1, v18

    #@447
    move/from16 v2, v24

    #@449
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    #@44c
    move-result v37

    #@44d
    .line 405
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@450
    .line 406
    if-eqz v37, :cond_13

    #@452
    const/4 v4, 0x1

    #@453
    :goto_13
    move-object/from16 v0, p3

    #@455
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@458
    .line 407
    const/4 v4, 0x1

    #@459
    return v4

    #@45a
    .line 403
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :cond_12
    const/16 v24, 0x0

    #@45c
    goto :goto_12

    #@45d
    .line 406
    .restart local v24    # "_arg1":Z
    .restart local v37    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    #@45e
    goto :goto_13

    #@45f
    .line 411
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@462
    move-object/from16 v0, p2

    #@464
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@467
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46a
    move-result-object v18

    #@46b
    .line 415
    .restart local v18    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46d
    move-object/from16 v0, p2

    #@46f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@472
    move-result-object v25

    #@473
    check-cast v25, [Landroid/view/inputmethod/InputMethodSubtype;

    #@475
    .line 416
    .local v25, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    #@477
    move-object/from16 v1, v18

    #@479
    move-object/from16 v2, v25

    #@47b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    #@47e
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@481
    .line 418
    const/4 v4, 0x1

    #@482
    return v4

    #@483
    .line 422
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@486
    move-object/from16 v0, p2

    #@488
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48b
    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    #@48e
    move-result v30

    #@48f
    .line 424
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@492
    .line 425
    move-object/from16 v0, p3

    #@494
    move/from16 v1, v30

    #@496
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@499
    .line 426
    const/4 v4, 0x1

    #@49a
    return v4

    #@49b
    .line 430
    .end local v30    # "_result":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@49e
    move-object/from16 v0, p2

    #@4a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a3
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a6
    move-result-object v14

    #@4a7
    .line 433
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4a9
    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    #@4ac
    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4af
    .line 435
    const/4 v4, 0x1

    #@4b0
    return v4

    #@4b1
    .line 439
    .end local v14    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@4b4
    move-object/from16 v0, p2

    #@4b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b9
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4bc
    move-result-object v14

    #@4bd
    .line 443
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c0
    move-result v4

    #@4c1
    if-eqz v4, :cond_14

    #@4c3
    .line 444
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c5
    move-object/from16 v0, p2

    #@4c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ca
    move-result-object v21

    #@4cb
    check-cast v21, Landroid/net/Uri;

    #@4cd
    .line 450
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d0
    move-result-object v29

    #@4d1
    .line 451
    .local v29, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d3
    move-object/from16 v1, v21

    #@4d5
    move-object/from16 v2, v29

    #@4d7
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@4da
    move-result-object v32

    #@4db
    .line 452
    .local v32, "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4de
    .line 453
    if-eqz v32, :cond_15

    #@4e0
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    #@4e3
    move-result-object v4

    #@4e4
    :goto_15
    move-object/from16 v0, p3

    #@4e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4e9
    .line 454
    const/4 v4, 0x1

    #@4ea
    return v4

    #@4eb
    .line 447
    .end local v29    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_14
    const/16 v21, 0x0

    #@4ed
    .local v21, "_arg1":Landroid/net/Uri;
    goto :goto_14

    #@4ee
    .line 453
    .end local v21    # "_arg1":Landroid/net/Uri;
    .restart local v29    # "_arg2":Ljava/lang/String;
    .restart local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_15
    const/4 v4, 0x0

    #@4ef
    goto :goto_15

    #@4f0
    .line 458
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f8
    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fb
    move-result v5

    #@4fc
    .line 461
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@4fe
    invoke-virtual {v0, v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    #@501
    .line 462
    const/4 v4, 0x1

    #@502
    return v4

    #@503
    .line 44
    nop

    #@504
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
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
