.class public abstract Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishInput:I = 0x2

.field static final blacklist TRANSACTION_finishSession:I = 0x3

.field static final blacklist TRANSACTION_invalidateInput:I = 0x4

.field static final blacklist TRANSACTION_updateSelection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "invalidateInput"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "finishSession"

    return-object v0

    .line 72
    :pswitch_b
    const-string v0, "finishInput"

    return-object v0

    .line 68
    :pswitch_e
    const-string/jumbo v0, "updateSelection"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    .line 96
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 100
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v3

    .line 103
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_6a

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 136
    :pswitch_26
    sget-object v5, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    .line 138
    .local v5, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v6

    .line 140
    .local v6, "_arg1":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 141
    .local v7, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    .line 143
    goto :goto_69

    .line 130
    .end local v5    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "_arg1":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v7    # "_arg2":I
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishSession()V

    .line 131
    goto :goto_69

    .line 125
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishInput()V

    .line 126
    goto :goto_69

    .line 108
    :pswitch_49
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 110
    .local v9, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 112
    .local v10, "_arg1":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 114
    .local v11, "_arg2":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 116
    .local v12, "_arg3":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 118
    .local v13, "_arg4":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 119
    .local v14, "_arg5":I
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 121
    nop

    .line 150
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v12    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_arg5":I
    :goto_69
    return v3

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_26
    .end packed-switch
.end method
