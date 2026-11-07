.class public abstract Landroid/app/ILocaleManager$Stub;
.super Landroid/os/Binder;
.source "ILocaleManager.java"

# interfaces
.implements Landroid/app/ILocaleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ILocaleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ILocaleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getApplicationLocales:I = 0x2

.field static final blacklist TRANSACTION_getOverrideLocaleConfig:I = 0x5

.field static final blacklist TRANSACTION_getSystemLocales:I = 0x3

.field static final blacklist TRANSACTION_setApplicationLocales:I = 0x1

.field static final blacklist TRANSACTION_setOverrideLocaleConfig:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.app.ILocaleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ILocaleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ILocaleManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.app.ILocaleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ILocaleManager;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/app/ILocaleManager;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/app/ILocaleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ILocaleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_18

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "getOverrideLocaleConfig"

    return-object v0

    .line 97
    :pswitch_8
    const-string/jumbo v0, "setOverrideLocaleConfig"

    return-object v0

    .line 93
    :pswitch_c
    const-string/jumbo v0, "getSystemLocales"

    return-object v0

    .line 89
    :pswitch_10
    const-string v0, "getApplicationLocales"

    return-object v0

    .line 85
    :pswitch_13
    const-string/jumbo v0, "setApplicationLocales"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 309
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/app/ILocaleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const-string v0, "android.app.ILocaleManager"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 176
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/app/ILocaleManager$Stub;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v4

    .line 181
    .local v4, "_result":Landroid/app/LocaleConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    goto :goto_8d

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/LocaleConfig;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/app/LocaleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocaleConfig;

    .line 168
    .local v4, "_arg2":Landroid/app/LocaleConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ILocaleManager$Stub;->setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_8d

    .line 155
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/app/LocaleConfig;
    :pswitch_4e
    invoke-virtual {p0}, Landroid/app/ILocaleManager$Stub;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 156
    .local v2, "_result":Landroid/os/LocaleList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_8d

    .line 144
    .end local v2    # "_result":Landroid/os/LocaleList;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3}, Landroid/app/ILocaleManager$Stub;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v4

    .line 149
    .local v4, "_result":Landroid/os/LocaleList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_8d

    .line 129
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/LocaleList;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/LocaleList;

    .line 135
    .local v4, "_arg2":Landroid/os/LocaleList;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 136
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ILocaleManager$Stub;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    nop

    .line 190
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/LocaleList;
    .end local v5    # "_arg3":Z
    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_59
        :pswitch_4e
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
