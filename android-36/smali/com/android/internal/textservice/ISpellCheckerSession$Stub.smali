.class public abstract Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.super Landroid/os/Binder;
.source "ISpellCheckerSession.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ISpellCheckerSession"

.field static final greylist-max-o TRANSACTION_onCancel:I = 0x3

.field static final greylist-max-o TRANSACTION_onClose:I = 0x4

.field static final greylist-max-o TRANSACTION_onGetSentenceSuggestionsMultiple:I = 0x2

.field static final greylist-max-o TRANSACTION_onGetSuggestionsMultiple:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/textservice/ISpellCheckerSession;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/textservice/ISpellCheckerSession;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onClose"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "onCancel"

    return-object v0

    .line 72
    :pswitch_b
    const-string v0, "onGetSentenceSuggestionsMultiple"

    return-object v0

    .line 68
    :pswitch_e
    const-string v0, "onGetSuggestionsMultiple"

    return-object v0

    nop

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

    .line 218
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_52

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onClose()V

    .line 135
    goto :goto_50

    .line 129
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onCancel()V

    .line 130
    goto :goto_50

    .line 120
    :pswitch_26
    sget-object v2, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/textservice/TextInfo;

    .line 122
    .local v2, "_arg0":[Landroid/view/textservice/TextInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    .line 125
    goto :goto_50

    .line 108
    .end local v2    # "_arg0":[Landroid/view/textservice/TextInfo;
    .end local v3    # "_arg1":I
    :pswitch_39
    sget-object v2, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/textservice/TextInfo;

    .line 110
    .restart local v2    # "_arg0":[Landroid/view/textservice/TextInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 113
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    .line 115
    nop

    .line 142
    .end local v2    # "_arg0":[Landroid/view/textservice/TextInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_39
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
