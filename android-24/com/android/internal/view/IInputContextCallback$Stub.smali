.class public abstract Lcom/android/internal/view/IInputContextCallback$Stub;
.super Landroid/os/Binder;
.source "IInputContextCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContextCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContextCallback"

.field static final TRANSACTION_setCursorCapsMode:I = 0x3

.field static final TRANSACTION_setExtractedText:I = 0x4

.field static final TRANSACTION_setRequestUpdateCursorAnchorInfoResult:I = 0x6

.field static final TRANSACTION_setSelectedText:I = 0x5

.field static final TRANSACTION_setTextAfterCursor:I = 0x2

.field static final TRANSACTION_setTextBeforeCursor:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.view.IInputContextCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContextCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputContextCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/view/IInputContextCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v6

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 53
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/CharSequence;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v4

    #@28
    .line 60
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    #@2b
    .line 61
    return v6

    #@2c
    .line 56
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    #@2d
    .local v2, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    #@2e
    .line 65
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@31
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 68
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Ljava/lang/CharSequence;

    #@42
    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v4

    #@46
    .line 75
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    #@49
    .line 76
    return v6

    #@4a
    .line 71
    .end local v4    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    #@4b
    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    #@4c
    .line 80
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@4f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v0

    #@56
    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v4

    #@5a
    .line 85
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCursorCapsMode(II)V

    #@5d
    .line 86
    return v6

    #@5e
    .line 90
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@61
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_2

    #@6a
    .line 93
    sget-object v5, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    #@72
    .line 99
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v4

    #@76
    .line 100
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    #@79
    .line 101
    return v6

    #@7a
    .line 96
    .end local v4    # "_arg1":I
    :cond_2
    const/4 v1, 0x0

    #@7b
    .local v1, "_arg0":Landroid/view/inputmethod/ExtractedText;
    goto :goto_2

    #@7c
    .line 105
    .end local v1    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@7f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_3

    #@88
    .line 108
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@8a
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d
    move-result-object v2

    #@8e
    check-cast v2, Ljava/lang/CharSequence;

    #@90
    .line 114
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v4

    #@94
    .line 115
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setSelectedText(Ljava/lang/CharSequence;I)V

    #@97
    .line 116
    return v6

    #@98
    .line 111
    .end local v4    # "_arg1":I
    :cond_3
    const/4 v2, 0x0

    #@99
    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    #@9a
    .line 120
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    #@9d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v5

    #@a4
    if-eqz v5, :cond_4

    #@a6
    const/4 v3, 0x1

    #@a7
    .line 124
    .local v3, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v4

    #@ab
    .line 125
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    #@ae
    .line 126
    return v6

    #@af
    .line 122
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_4
    const/4 v3, 0x0

    #@b0
    .restart local v3    # "_arg0":Z
    goto :goto_4

    #@b1
    .line 41
    nop

    #@b2
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
