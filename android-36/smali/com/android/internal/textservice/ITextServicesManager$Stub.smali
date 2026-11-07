.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final greylist-max-o TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final greylist-max-o TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final greylist-max-o TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final greylist-max-o TRANSACTION_getEnabledSpellCheckers:I = 0x6

.field static final greylist-max-o TRANSACTION_getSpellCheckerService:I = 0x3

.field static final greylist-max-o TRANSACTION_isSpellCheckerEnabled:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Lcom/android/internal/textservice/ITextServicesManager;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_18

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "getEnabledSpellCheckers"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "isSpellCheckerEnabled"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "finishSpellCheckerService"

    return-object v0

    .line 89
    :pswitch_e
    const-string v0, "getSpellCheckerService"

    return-object v0

    .line 85
    :pswitch_11
    const-string v0, "getCurrentSpellCheckerSubtype"

    return-object v0

    .line 81
    :pswitch_14
    const-string v0, "getCurrentSpellChecker"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 339
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    move-object v8, p3

    const-string v9, "com.android.internal.textservice.ITextServicesManager"

    .line 117
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 118
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 121
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v10

    .line 124
    :cond_17
    packed-switch p1, :pswitch_data_b4

    .line 202
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 196
    .local v2, "_result":[Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 198
    goto/16 :goto_b3

    .line 183
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/view/textservice/SpellCheckerInfo;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled(I)Z

    move-result v2

    .line 186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    goto :goto_b3

    .line 173
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v2

    .line 176
    .local v2, "_arg1":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 178
    goto :goto_b3

    .line 153
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v4

    .line 161
    .local v4, "_arg3":Lcom/android/internal/textservice/ITextServicesSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v5

    .line 163
    .local v5, "_arg4":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 165
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 166
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V

    .line 168
    goto :goto_b3

    .line 141
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local v5    # "_arg4":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 144
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 146
    .local v3, "_result":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_b3

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 134
    .local v3, "_result":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    nop

    .line 205
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/view/textservice/SpellCheckerInfo;
    :goto_b3
    return v10

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_87
        :pswitch_57
        :pswitch_44
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
