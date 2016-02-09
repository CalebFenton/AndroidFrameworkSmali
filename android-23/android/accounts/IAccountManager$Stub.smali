.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_accountAuthenticated:I = 0x1c

.field static final TRANSACTION_addAccount:I = 0x17

.field static final TRANSACTION_addAccountAsUser:I = 0x18

.field static final TRANSACTION_addAccountExplicitly:I = 0xa

.field static final TRANSACTION_addSharedAccountAsUser:I = 0x1e

.field static final TRANSACTION_clearPassword:I = 0x13

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1b

.field static final TRANSACTION_copyAccountToUser:I = 0xe

.field static final TRANSACTION_editProperties:I = 0x1a

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsAsUser:I = 0x7

.field static final TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x6

.field static final TRANSACTION_getAccountsForPackage:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x16

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1d

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x22

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1f

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0xf

.field static final TRANSACTION_peekAuthToken:I = 0x10

.field static final TRANSACTION_removeAccount:I = 0xb

.field static final TRANSACTION_removeAccountAsUser:I = 0xc

.field static final TRANSACTION_removeAccountExplicitly:I = 0xd

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x20

.field static final TRANSACTION_renameAccount:I = 0x21

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x23

.field static final TRANSACTION_setAuthToken:I = 0x11

.field static final TRANSACTION_setPassword:I = 0x12

.field static final TRANSACTION_setUserData:I = 0x14

.field static final TRANSACTION_updateAppPermission:I = 0x15

.field static final TRANSACTION_updateCredentials:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.accounts.IAccountManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
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
    const-string/jumbo v1, "android.accounts.IAccountManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/accounts/IAccountManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/accounts/IAccountManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 42
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
    .line 650
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 54
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v31

    #@28
    check-cast v31, Landroid/accounts/Account;

    #@2a
    .line 59
    :goto_0
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v31

    #@2e
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    #@31
    move-result-object v38

    #@32
    .line 60
    .local v38, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    .line 61
    move-object/from16 v0, p3

    #@37
    move-object/from16 v1, v38

    #@39
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 62
    const/4 v3, 0x1

    #@3d
    return v3

    #@3e
    .line 57
    .end local v38    # "_result":Ljava/lang/String;
    :cond_0
    const/16 v31, 0x0

    #@40
    .local v31, "_arg0":Landroid/accounts/Account;
    goto :goto_0

    #@41
    .line 66
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_2
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@44
    move-object/from16 v0, p2

    #@46
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_1

    #@4f
    .line 69
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51
    move-object/from16 v0, p2

    #@53
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@56
    move-result-object v31

    #@57
    check-cast v31, Landroid/accounts/Account;

    #@59
    .line 75
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    .line 76
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, v31

    #@61
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v38

    #@65
    .line 77
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 78
    move-object/from16 v0, p3

    #@6a
    move-object/from16 v1, v38

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6f
    .line 79
    const/4 v3, 0x1

    #@70
    return v3

    #@71
    .line 72
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Ljava/lang/String;
    :cond_1
    const/16 v31, 0x0

    #@73
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    #@74
    .line 83
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_3
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v30

    #@80
    .line 86
    .local v30, "_arg0":I
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v30

    #@84
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    #@87
    move-result-object v41

    #@88
    .line 87
    .local v41, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 88
    const/4 v3, 0x1

    #@8c
    move-object/from16 v0, p3

    #@8e
    move-object/from16 v1, v41

    #@90
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@93
    .line 89
    const/4 v3, 0x1

    #@94
    return v3

    #@95
    .line 93
    .end local v30    # "_arg0":I
    .end local v41    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :sswitch_4
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0
    move-result-object v32

    #@a1
    .line 96
    .local v32, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, v32

    #@a5
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    #@a8
    move-result-object v40

    #@a9
    .line 97
    .local v40, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 98
    const/4 v3, 0x1

    #@ad
    move-object/from16 v0, p3

    #@af
    move-object/from16 v1, v40

    #@b1
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@b4
    .line 99
    const/4 v3, 0x1

    #@b5
    return v3

    #@b6
    .line 103
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":[Landroid/accounts/Account;
    :sswitch_5
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c1
    move-result-object v32

    #@c2
    .line 107
    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v33

    #@c6
    .line 108
    .local v33, "_arg1":I
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v32

    #@ca
    move/from16 v2, v33

    #@cc
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@cf
    move-result-object v40

    #@d0
    .line 109
    .restart local v40    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d3
    .line 110
    const/4 v3, 0x1

    #@d4
    move-object/from16 v0, p3

    #@d6
    move-object/from16 v1, v40

    #@d8
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@db
    .line 111
    const/4 v3, 0x1

    #@dc
    return v3

    #@dd
    .line 115
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":I
    .end local v40    # "_result":[Landroid/accounts/Account;
    :sswitch_6
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e8
    move-result-object v32

    #@e9
    .line 119
    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v12

    #@ed
    .line 120
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v32

    #@f1
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    #@f4
    move-result-object v40

    #@f5
    .line 121
    .restart local v40    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 122
    const/4 v3, 0x1

    #@f9
    move-object/from16 v0, p3

    #@fb
    move-object/from16 v1, v40

    #@fd
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@100
    .line 123
    const/4 v3, 0x1

    #@101
    return v3

    #@102
    .line 127
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":[Landroid/accounts/Account;
    :sswitch_7
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10d
    move-result-object v32

    #@10e
    .line 131
    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v33

    #@112
    .line 132
    .restart local v33    # "_arg1":I
    move-object/from16 v0, p0

    #@114
    move-object/from16 v1, v32

    #@116
    move/from16 v2, v33

    #@118
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@11b
    move-result-object v40

    #@11c
    .line 133
    .restart local v40    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11f
    .line 134
    const/4 v3, 0x1

    #@120
    move-object/from16 v0, p3

    #@122
    move-object/from16 v1, v40

    #@124
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@127
    .line 135
    const/4 v3, 0x1

    #@128
    return v3

    #@129
    .line 139
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":I
    .end local v40    # "_result":[Landroid/accounts/Account;
    :sswitch_8
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@134
    move-result-object v3

    #@135
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@138
    move-result-object v4

    #@139
    .line 143
    .local v4, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v3

    #@13d
    if-eqz v3, :cond_2

    #@13f
    .line 144
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    move-object/from16 v0, p2

    #@143
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@146
    move-result-object v5

    #@147
    check-cast v5, Landroid/accounts/Account;

    #@149
    .line 150
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@14c
    move-result-object v36

    #@14d
    .line 151
    .local v36, "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@14f
    move-object/from16 v1, v36

    #@151
    invoke-virtual {v0, v4, v5, v1}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    #@154
    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@157
    .line 153
    const/4 v3, 0x1

    #@158
    return v3

    #@159
    .line 147
    .end local v36    # "_arg2":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@15a
    .local v5, "_arg1":Landroid/accounts/Account;
    goto :goto_2

    #@15b
    .line 157
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@166
    move-result-object v3

    #@167
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@16a
    move-result-object v4

    #@16b
    .line 161
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16e
    move-result-object v12

    #@16f
    .line 163
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@172
    move-result-object v36

    #@173
    .line 164
    .restart local v36    # "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@175
    move-object/from16 v1, v36

    #@177
    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    #@17a
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 166
    const/4 v3, 0x1

    #@17e
    return v3

    #@17f
    .line 170
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg2":[Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v3

    #@18b
    if-eqz v3, :cond_3

    #@18d
    .line 173
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@194
    move-result-object v31

    #@195
    check-cast v31, Landroid/accounts/Account;

    #@197
    .line 179
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19a
    move-result-object v12

    #@19b
    .line 181
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v3

    #@19f
    if-eqz v3, :cond_4

    #@1a1
    .line 182
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a8
    move-result-object v27

    #@1a9
    check-cast v27, Landroid/os/Bundle;

    #@1ab
    .line 187
    :goto_4
    move-object/from16 v0, p0

    #@1ad
    move-object/from16 v1, v31

    #@1af
    move-object/from16 v2, v27

    #@1b1
    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    #@1b4
    move-result v39

    #@1b5
    .line 188
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    .line 189
    if-eqz v39, :cond_5

    #@1ba
    const/4 v3, 0x1

    #@1bb
    :goto_5
    move-object/from16 v0, p3

    #@1bd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c0
    .line 190
    const/4 v3, 0x1

    #@1c1
    return v3

    #@1c2
    .line 176
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Z
    :cond_3
    const/16 v31, 0x0

    #@1c4
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    #@1c5
    .line 185
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    #@1c7
    .local v27, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    #@1c8
    .line 189
    .end local v27    # "_arg2":Landroid/os/Bundle;
    .restart local v39    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    #@1c9
    goto :goto_5

    #@1ca
    .line 194
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@1cd
    move-object/from16 v0, p2

    #@1cf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d2
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d5
    move-result-object v3

    #@1d6
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@1d9
    move-result-object v4

    #@1da
    .line 198
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd
    move-result v3

    #@1de
    if-eqz v3, :cond_6

    #@1e0
    .line 199
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e2
    move-object/from16 v0, p2

    #@1e4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e7
    move-result-object v5

    #@1e8
    check-cast v5, Landroid/accounts/Account;

    #@1ea
    .line 205
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed
    move-result v3

    #@1ee
    if-eqz v3, :cond_7

    #@1f0
    const/16 v35, 0x1

    #@1f2
    .line 206
    .local v35, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    #@1f4
    move/from16 v1, v35

    #@1f6
    invoke-virtual {v0, v4, v5, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    #@1f9
    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 208
    const/4 v3, 0x1

    #@1fd
    return v3

    #@1fe
    .line 202
    .end local v35    # "_arg2":Z
    :cond_6
    const/4 v5, 0x0

    #@1ff
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_6

    #@200
    .line 205
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_7
    const/16 v35, 0x0

    #@202
    .restart local v35    # "_arg2":Z
    goto :goto_7

    #@203
    .line 212
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v35    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@206
    move-object/from16 v0, p2

    #@208
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20b
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20e
    move-result-object v3

    #@20f
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@212
    move-result-object v4

    #@213
    .line 216
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216
    move-result v3

    #@217
    if-eqz v3, :cond_8

    #@219
    .line 217
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21b
    move-object/from16 v0, p2

    #@21d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@220
    move-result-object v5

    #@221
    check-cast v5, Landroid/accounts/Account;

    #@223
    .line 223
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@226
    move-result v3

    #@227
    if-eqz v3, :cond_9

    #@229
    const/16 v35, 0x1

    #@22b
    .line 225
    .restart local v35    # "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22e
    move-result v37

    #@22f
    .line 226
    .local v37, "_arg3":I
    move-object/from16 v0, p0

    #@231
    move/from16 v1, v35

    #@233
    move/from16 v2, v37

    #@235
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    #@238
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23b
    .line 228
    const/4 v3, 0x1

    #@23c
    return v3

    #@23d
    .line 220
    .end local v35    # "_arg2":Z
    .end local v37    # "_arg3":I
    :cond_8
    const/4 v5, 0x0

    #@23e
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    #@23f
    .line 223
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_9
    const/16 v35, 0x0

    #@241
    .restart local v35    # "_arg2":Z
    goto :goto_9

    #@242
    .line 232
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v35    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@245
    move-object/from16 v0, p2

    #@247
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24a
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24d
    move-result v3

    #@24e
    if-eqz v3, :cond_a

    #@250
    .line 235
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@252
    move-object/from16 v0, p2

    #@254
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@257
    move-result-object v31

    #@258
    check-cast v31, Landroid/accounts/Account;

    #@25a
    .line 240
    :goto_a
    move-object/from16 v0, p0

    #@25c
    move-object/from16 v1, v31

    #@25e
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    #@261
    move-result v39

    #@262
    .line 241
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@265
    .line 242
    if-eqz v39, :cond_b

    #@267
    const/4 v3, 0x1

    #@268
    :goto_b
    move-object/from16 v0, p3

    #@26a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26d
    .line 243
    const/4 v3, 0x1

    #@26e
    return v3

    #@26f
    .line 238
    .end local v39    # "_result":Z
    :cond_a
    const/16 v31, 0x0

    #@271
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    #@272
    .line 242
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v39    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    #@273
    goto :goto_b

    #@274
    .line 247
    .end local v39    # "_result":Z
    :sswitch_e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@277
    move-object/from16 v0, p2

    #@279
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27c
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27f
    move-result-object v3

    #@280
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@283
    move-result-object v4

    #@284
    .line 251
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@287
    move-result v3

    #@288
    if-eqz v3, :cond_c

    #@28a
    .line 252
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28c
    move-object/from16 v0, p2

    #@28e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@291
    move-result-object v5

    #@292
    check-cast v5, Landroid/accounts/Account;

    #@294
    .line 258
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@297
    move-result v34

    #@298
    .line 260
    .local v34, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29b
    move-result v37

    #@29c
    .line 261
    .restart local v37    # "_arg3":I
    move-object/from16 v0, p0

    #@29e
    move/from16 v1, v34

    #@2a0
    move/from16 v2, v37

    #@2a2
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@2a5
    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a8
    .line 263
    const/4 v3, 0x1

    #@2a9
    return v3

    #@2aa
    .line 255
    .end local v34    # "_arg2":I
    .end local v37    # "_arg3":I
    :cond_c
    const/4 v5, 0x0

    #@2ab
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_c

    #@2ac
    .line 267
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@2af
    move-object/from16 v0, p2

    #@2b1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b4
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b7
    move-result-object v32

    #@2b8
    .line 271
    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2bb
    move-result-object v12

    #@2bc
    .line 272
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2be
    move-object/from16 v1, v32

    #@2c0
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    #@2c3
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c6
    .line 274
    const/4 v3, 0x1

    #@2c7
    return v3

    #@2c8
    .line 278
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d3
    move-result v3

    #@2d4
    if-eqz v3, :cond_d

    #@2d6
    .line 281
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d8
    move-object/from16 v0, p2

    #@2da
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2dd
    move-result-object v31

    #@2de
    check-cast v31, Landroid/accounts/Account;

    #@2e0
    .line 287
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e3
    move-result-object v12

    #@2e4
    .line 288
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e6
    move-object/from16 v1, v31

    #@2e8
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@2eb
    move-result-object v38

    #@2ec
    .line 289
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ef
    .line 290
    move-object/from16 v0, p3

    #@2f1
    move-object/from16 v1, v38

    #@2f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f6
    .line 291
    const/4 v3, 0x1

    #@2f7
    return v3

    #@2f8
    .line 284
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v31, 0x0

    #@2fa
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    #@2fb
    .line 295
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_11
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@2fe
    move-object/from16 v0, p2

    #@300
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@303
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@306
    move-result v3

    #@307
    if-eqz v3, :cond_e

    #@309
    .line 298
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30b
    move-object/from16 v0, p2

    #@30d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@310
    move-result-object v31

    #@311
    check-cast v31, Landroid/accounts/Account;

    #@313
    .line 304
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@316
    move-result-object v12

    #@317
    .line 306
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31a
    move-result-object v6

    #@31b
    .line 307
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@31d
    move-object/from16 v1, v31

    #@31f
    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@322
    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@325
    .line 309
    const/4 v3, 0x1

    #@326
    return v3

    #@327
    .line 301
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v31, 0x0

    #@329
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    #@32a
    .line 313
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@32d
    move-object/from16 v0, p2

    #@32f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@332
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v3

    #@336
    if-eqz v3, :cond_f

    #@338
    .line 316
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33a
    move-object/from16 v0, p2

    #@33c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33f
    move-result-object v31

    #@340
    check-cast v31, Landroid/accounts/Account;

    #@342
    .line 322
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v12

    #@346
    .line 323
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@348
    move-object/from16 v1, v31

    #@34a
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    #@34d
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@350
    .line 325
    const/4 v3, 0x1

    #@351
    return v3

    #@352
    .line 319
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_f
    const/16 v31, 0x0

    #@354
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    #@355
    .line 329
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@358
    move-object/from16 v0, p2

    #@35a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35d
    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v3

    #@361
    if-eqz v3, :cond_10

    #@363
    .line 332
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36a
    move-result-object v31

    #@36b
    check-cast v31, Landroid/accounts/Account;

    #@36d
    .line 337
    :goto_10
    move-object/from16 v0, p0

    #@36f
    move-object/from16 v1, v31

    #@371
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    #@374
    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@377
    .line 339
    const/4 v3, 0x1

    #@378
    return v3

    #@379
    .line 335
    :cond_10
    const/16 v31, 0x0

    #@37b
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    #@37c
    .line 343
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@37f
    move-object/from16 v0, p2

    #@381
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@387
    move-result v3

    #@388
    if-eqz v3, :cond_11

    #@38a
    .line 346
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38c
    move-object/from16 v0, p2

    #@38e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@391
    move-result-object v31

    #@392
    check-cast v31, Landroid/accounts/Account;

    #@394
    .line 352
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@397
    move-result-object v12

    #@398
    .line 354
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39b
    move-result-object v6

    #@39c
    .line 355
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@39e
    move-object/from16 v1, v31

    #@3a0
    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@3a3
    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 357
    const/4 v3, 0x1

    #@3a7
    return v3

    #@3a8
    .line 349
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_11
    const/16 v31, 0x0

    #@3aa
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    #@3ab
    .line 361
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_15
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b3
    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b6
    move-result v3

    #@3b7
    if-eqz v3, :cond_12

    #@3b9
    .line 364
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3bb
    move-object/from16 v0, p2

    #@3bd
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c0
    move-result-object v31

    #@3c1
    check-cast v31, Landroid/accounts/Account;

    #@3c3
    .line 370
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c6
    move-result-object v12

    #@3c7
    .line 372
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v34

    #@3cb
    .line 374
    .restart local v34    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ce
    move-result v3

    #@3cf
    if-eqz v3, :cond_13

    #@3d1
    const/4 v7, 0x1

    #@3d2
    .line 375
    .local v7, "_arg3":Z
    :goto_13
    move-object/from16 v0, p0

    #@3d4
    move-object/from16 v1, v31

    #@3d6
    move/from16 v2, v34

    #@3d8
    invoke-virtual {v0, v1, v12, v2, v7}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    #@3db
    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3de
    .line 377
    const/4 v3, 0x1

    #@3df
    return v3

    #@3e0
    .line 367
    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    :cond_12
    const/16 v31, 0x0

    #@3e2
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    #@3e3
    .line 374
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_arg2":I
    :cond_13
    const/4 v7, 0x0

    #@3e4
    .restart local v7    # "_arg3":Z
    goto :goto_13

    #@3e5
    .line 381
    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    :sswitch_16
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@3e8
    move-object/from16 v0, p2

    #@3ea
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ed
    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f0
    move-result-object v3

    #@3f1
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@3f4
    move-result-object v4

    #@3f5
    .line 385
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f8
    move-result v3

    #@3f9
    if-eqz v3, :cond_14

    #@3fb
    .line 386
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3fd
    move-object/from16 v0, p2

    #@3ff
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@402
    move-result-object v5

    #@403
    check-cast v5, Landroid/accounts/Account;

    #@405
    .line 392
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@408
    move-result-object v6

    #@409
    .line 394
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40c
    move-result v3

    #@40d
    if-eqz v3, :cond_15

    #@40f
    const/4 v7, 0x1

    #@410
    .line 396
    .restart local v7    # "_arg3":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@413
    move-result v3

    #@414
    if-eqz v3, :cond_16

    #@416
    const/4 v8, 0x1

    #@417
    .line 398
    .local v8, "_arg4":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41a
    move-result v3

    #@41b
    if-eqz v3, :cond_17

    #@41d
    .line 399
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41f
    move-object/from16 v0, p2

    #@421
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@424
    move-result-object v9

    #@425
    check-cast v9, Landroid/os/Bundle;

    #@427
    :goto_17
    move-object/from16 v3, p0

    #@429
    .line 404
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    #@42c
    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42f
    .line 406
    const/4 v3, 0x1

    #@430
    return v3

    #@431
    .line 389
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    :cond_14
    const/4 v5, 0x0

    #@432
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_14

    #@433
    .line 394
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    #@434
    .restart local v7    # "_arg3":Z
    goto :goto_15

    #@435
    .line 396
    :cond_16
    const/4 v8, 0x0

    #@436
    .restart local v8    # "_arg4":Z
    goto :goto_16

    #@437
    .line 402
    :cond_17
    const/4 v9, 0x0

    #@438
    .local v9, "_arg5":Landroid/os/Bundle;
    goto :goto_17

    #@439
    .line 410
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@43c
    move-object/from16 v0, p2

    #@43e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@441
    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@444
    move-result-object v3

    #@445
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@448
    move-result-object v4

    #@449
    .line 414
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44c
    move-result-object v12

    #@44d
    .line 416
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@450
    move-result-object v6

    #@451
    .line 418
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@454
    move-result-object v14

    #@455
    .line 420
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@458
    move-result v3

    #@459
    if-eqz v3, :cond_18

    #@45b
    const/4 v8, 0x1

    #@45c
    .line 422
    .restart local v8    # "_arg4":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45f
    move-result v3

    #@460
    if-eqz v3, :cond_19

    #@462
    .line 423
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@464
    move-object/from16 v0, p2

    #@466
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@469
    move-result-object v9

    #@46a
    check-cast v9, Landroid/os/Bundle;

    #@46c
    :goto_19
    move-object/from16 v10, p0

    #@46e
    move-object v11, v4

    #@46f
    move-object v13, v6

    #@470
    move v15, v8

    #@471
    move-object/from16 v16, v9

    #@473
    .line 428
    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@476
    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@479
    .line 430
    const/4 v3, 0x1

    #@47a
    return v3

    #@47b
    .line 420
    .end local v8    # "_arg4":Z
    :cond_18
    const/4 v8, 0x0

    #@47c
    .restart local v8    # "_arg4":Z
    goto :goto_18

    #@47d
    .line 426
    :cond_19
    const/4 v9, 0x0

    #@47e
    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_19

    #@47f
    .line 434
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@482
    move-object/from16 v0, p2

    #@484
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@487
    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@48a
    move-result-object v3

    #@48b
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@48e
    move-result-object v4

    #@48f
    .line 438
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@492
    move-result-object v12

    #@493
    .line 440
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@496
    move-result-object v6

    #@497
    .line 442
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@49a
    move-result-object v14

    #@49b
    .line 444
    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49e
    move-result v3

    #@49f
    if-eqz v3, :cond_1a

    #@4a1
    const/4 v8, 0x1

    #@4a2
    .line 446
    .restart local v8    # "_arg4":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v3

    #@4a6
    if-eqz v3, :cond_1b

    #@4a8
    .line 447
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4aa
    move-object/from16 v0, p2

    #@4ac
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4af
    move-result-object v9

    #@4b0
    check-cast v9, Landroid/os/Bundle;

    #@4b2
    .line 453
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b5
    move-result v17

    #@4b6
    .local v17, "_arg6":I
    move-object/from16 v10, p0

    #@4b8
    move-object v11, v4

    #@4b9
    move-object v13, v6

    #@4ba
    move v15, v8

    #@4bb
    move-object/from16 v16, v9

    #@4bd
    .line 454
    invoke-virtual/range {v10 .. v17}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    #@4c0
    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c3
    .line 456
    const/4 v3, 0x1

    #@4c4
    return v3

    #@4c5
    .line 444
    .end local v8    # "_arg4":Z
    .end local v17    # "_arg6":I
    :cond_1a
    const/4 v8, 0x0

    #@4c6
    .restart local v8    # "_arg4":Z
    goto :goto_1a

    #@4c7
    .line 450
    :cond_1b
    const/4 v9, 0x0

    #@4c8
    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_1b

    #@4c9
    .line 460
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d1
    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d4
    move-result-object v3

    #@4d5
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@4d8
    move-result-object v4

    #@4d9
    .line 464
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4dc
    move-result v3

    #@4dd
    if-eqz v3, :cond_1c

    #@4df
    .line 465
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e1
    move-object/from16 v0, p2

    #@4e3
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e6
    move-result-object v5

    #@4e7
    check-cast v5, Landroid/accounts/Account;

    #@4e9
    .line 471
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ec
    move-result-object v6

    #@4ed
    .line 473
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f0
    move-result v3

    #@4f1
    if-eqz v3, :cond_1d

    #@4f3
    const/4 v7, 0x1

    #@4f4
    .line 475
    .restart local v7    # "_arg3":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f7
    move-result v3

    #@4f8
    if-eqz v3, :cond_1e

    #@4fa
    .line 476
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4fc
    move-object/from16 v0, p2

    #@4fe
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@501
    move-result-object v23

    #@502
    check-cast v23, Landroid/os/Bundle;

    #@504
    :goto_1e
    move-object/from16 v18, p0

    #@506
    move-object/from16 v19, v4

    #@508
    move-object/from16 v20, v5

    #@50a
    move-object/from16 v21, v6

    #@50c
    move/from16 v22, v7

    #@50e
    .line 481
    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@511
    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@514
    .line 483
    const/4 v3, 0x1

    #@515
    return v3

    #@516
    .line 468
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_1c
    const/4 v5, 0x0

    #@517
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_1c

    #@518
    .line 473
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v7, 0x0

    #@519
    .restart local v7    # "_arg3":Z
    goto :goto_1d

    #@51a
    .line 479
    :cond_1e
    const/16 v23, 0x0

    #@51c
    .local v23, "_arg4":Landroid/os/Bundle;
    goto :goto_1e

    #@51d
    .line 487
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@520
    move-object/from16 v0, p2

    #@522
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@525
    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@528
    move-result-object v3

    #@529
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@52c
    move-result-object v4

    #@52d
    .line 491
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@530
    move-result-object v12

    #@531
    .line 493
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@534
    move-result v3

    #@535
    if-eqz v3, :cond_1f

    #@537
    const/16 v35, 0x1

    #@539
    .line 494
    .restart local v35    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    #@53b
    move/from16 v1, v35

    #@53d
    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    #@540
    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@543
    .line 496
    const/4 v3, 0x1

    #@544
    return v3

    #@545
    .line 493
    .end local v35    # "_arg2":Z
    :cond_1f
    const/16 v35, 0x0

    #@547
    .restart local v35    # "_arg2":Z
    goto :goto_1f

    #@548
    .line 500
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Z
    :sswitch_1b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@54b
    move-object/from16 v0, p2

    #@54d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@550
    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@553
    move-result-object v3

    #@554
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@557
    move-result-object v4

    #@558
    .line 504
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55b
    move-result v3

    #@55c
    if-eqz v3, :cond_20

    #@55e
    .line 505
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@560
    move-object/from16 v0, p2

    #@562
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@565
    move-result-object v5

    #@566
    check-cast v5, Landroid/accounts/Account;

    #@568
    .line 511
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56b
    move-result v3

    #@56c
    if-eqz v3, :cond_21

    #@56e
    .line 512
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@570
    move-object/from16 v0, p2

    #@572
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@575
    move-result-object v27

    #@576
    check-cast v27, Landroid/os/Bundle;

    #@578
    .line 518
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57b
    move-result v3

    #@57c
    if-eqz v3, :cond_22

    #@57e
    const/4 v7, 0x1

    #@57f
    .line 520
    .restart local v7    # "_arg3":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@582
    move-result v29

    #@583
    .local v29, "_arg4":I
    move-object/from16 v24, p0

    #@585
    move-object/from16 v25, v4

    #@587
    move-object/from16 v26, v5

    #@589
    move/from16 v28, v7

    #@58b
    .line 521
    invoke-virtual/range {v24 .. v29}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    #@58e
    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@591
    .line 523
    const/4 v3, 0x1

    #@592
    return v3

    #@593
    .line 508
    .end local v7    # "_arg3":Z
    .end local v29    # "_arg4":I
    :cond_20
    const/4 v5, 0x0

    #@594
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_20

    #@595
    .line 515
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_21
    const/16 v27, 0x0

    #@597
    .restart local v27    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    #@598
    .line 518
    .end local v27    # "_arg2":Landroid/os/Bundle;
    :cond_22
    const/4 v7, 0x0

    #@599
    .restart local v7    # "_arg3":Z
    goto :goto_22

    #@59a
    .line 527
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg3":Z
    :sswitch_1c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@59d
    move-object/from16 v0, p2

    #@59f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a2
    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a5
    move-result v3

    #@5a6
    if-eqz v3, :cond_23

    #@5a8
    .line 530
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5aa
    move-object/from16 v0, p2

    #@5ac
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5af
    move-result-object v31

    #@5b0
    check-cast v31, Landroid/accounts/Account;

    #@5b2
    .line 535
    :goto_23
    move-object/from16 v0, p0

    #@5b4
    move-object/from16 v1, v31

    #@5b6
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    #@5b9
    move-result v39

    #@5ba
    .line 536
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bd
    .line 537
    if-eqz v39, :cond_24

    #@5bf
    const/4 v3, 0x1

    #@5c0
    :goto_24
    move-object/from16 v0, p3

    #@5c2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5c5
    .line 538
    const/4 v3, 0x1

    #@5c6
    return v3

    #@5c7
    .line 533
    .end local v39    # "_result":Z
    :cond_23
    const/16 v31, 0x0

    #@5c9
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    #@5ca
    .line 537
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v39    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    #@5cb
    goto :goto_24

    #@5cc
    .line 542
    .end local v39    # "_result":Z
    :sswitch_1d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@5cf
    move-object/from16 v0, p2

    #@5d1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d4
    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5d7
    move-result-object v3

    #@5d8
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@5db
    move-result-object v4

    #@5dc
    .line 546
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5df
    move-result-object v12

    #@5e0
    .line 548
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e3
    move-result-object v6

    #@5e4
    .line 549
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5e6
    invoke-virtual {v0, v4, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    #@5e9
    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ec
    .line 551
    const/4 v3, 0x1

    #@5ed
    return v3

    #@5ee
    .line 555
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f6
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f9
    move-result v3

    #@5fa
    if-eqz v3, :cond_25

    #@5fc
    .line 558
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@603
    move-result-object v31

    #@604
    check-cast v31, Landroid/accounts/Account;

    #@606
    .line 564
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@609
    move-result v33

    #@60a
    .line 565
    .restart local v33    # "_arg1":I
    move-object/from16 v0, p0

    #@60c
    move-object/from16 v1, v31

    #@60e
    move/from16 v2, v33

    #@610
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@613
    move-result v39

    #@614
    .line 566
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@617
    .line 567
    if-eqz v39, :cond_26

    #@619
    const/4 v3, 0x1

    #@61a
    :goto_26
    move-object/from16 v0, p3

    #@61c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@61f
    .line 568
    const/4 v3, 0x1

    #@620
    return v3

    #@621
    .line 561
    .end local v33    # "_arg1":I
    .end local v39    # "_result":Z
    :cond_25
    const/16 v31, 0x0

    #@623
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    #@624
    .line 567
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v33    # "_arg1":I
    .restart local v39    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    #@625
    goto :goto_26

    #@626
    .line 572
    .end local v33    # "_arg1":I
    .end local v39    # "_result":Z
    :sswitch_1f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@629
    move-object/from16 v0, p2

    #@62b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62e
    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@631
    move-result v30

    #@632
    .line 575
    .restart local v30    # "_arg0":I
    move-object/from16 v0, p0

    #@634
    move/from16 v1, v30

    #@636
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@639
    move-result-object v40

    #@63a
    .line 576
    .restart local v40    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63d
    .line 577
    const/4 v3, 0x1

    #@63e
    move-object/from16 v0, p3

    #@640
    move-object/from16 v1, v40

    #@642
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@645
    .line 578
    const/4 v3, 0x1

    #@646
    return v3

    #@647
    .line 582
    .end local v30    # "_arg0":I
    .end local v40    # "_result":[Landroid/accounts/Account;
    :sswitch_20
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@64a
    move-object/from16 v0, p2

    #@64c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64f
    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@652
    move-result v3

    #@653
    if-eqz v3, :cond_27

    #@655
    .line 585
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@657
    move-object/from16 v0, p2

    #@659
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65c
    move-result-object v31

    #@65d
    check-cast v31, Landroid/accounts/Account;

    #@65f
    .line 591
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@662
    move-result v33

    #@663
    .line 592
    .restart local v33    # "_arg1":I
    move-object/from16 v0, p0

    #@665
    move-object/from16 v1, v31

    #@667
    move/from16 v2, v33

    #@669
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@66c
    move-result v39

    #@66d
    .line 593
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@670
    .line 594
    if-eqz v39, :cond_28

    #@672
    const/4 v3, 0x1

    #@673
    :goto_28
    move-object/from16 v0, p3

    #@675
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@678
    .line 595
    const/4 v3, 0x1

    #@679
    return v3

    #@67a
    .line 588
    .end local v33    # "_arg1":I
    .end local v39    # "_result":Z
    :cond_27
    const/16 v31, 0x0

    #@67c
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_27

    #@67d
    .line 594
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v33    # "_arg1":I
    .restart local v39    # "_result":Z
    :cond_28
    const/4 v3, 0x0

    #@67e
    goto :goto_28

    #@67f
    .line 599
    .end local v33    # "_arg1":I
    .end local v39    # "_result":Z
    :sswitch_21
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@682
    move-object/from16 v0, p2

    #@684
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@687
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@68a
    move-result-object v3

    #@68b
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@68e
    move-result-object v4

    #@68f
    .line 603
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@692
    move-result v3

    #@693
    if-eqz v3, :cond_29

    #@695
    .line 604
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@697
    move-object/from16 v0, p2

    #@699
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69c
    move-result-object v5

    #@69d
    check-cast v5, Landroid/accounts/Account;

    #@69f
    .line 610
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6a2
    move-result-object v6

    #@6a3
    .line 611
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a5
    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    #@6a8
    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ab
    .line 613
    const/4 v3, 0x1

    #@6ac
    return v3

    #@6ad
    .line 607
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_29
    const/4 v5, 0x0

    #@6ae
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_29

    #@6af
    .line 617
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_22
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@6b2
    move-object/from16 v0, p2

    #@6b4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b7
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ba
    move-result v3

    #@6bb
    if-eqz v3, :cond_2a

    #@6bd
    .line 620
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6bf
    move-object/from16 v0, p2

    #@6c1
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6c4
    move-result-object v31

    #@6c5
    check-cast v31, Landroid/accounts/Account;

    #@6c7
    .line 625
    :goto_2a
    move-object/from16 v0, p0

    #@6c9
    move-object/from16 v1, v31

    #@6cb
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    #@6ce
    move-result-object v38

    #@6cf
    .line 626
    .restart local v38    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d2
    .line 627
    move-object/from16 v0, p3

    #@6d4
    move-object/from16 v1, v38

    #@6d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6d9
    .line 628
    const/4 v3, 0x1

    #@6da
    return v3

    #@6db
    .line 623
    .end local v38    # "_result":Ljava/lang/String;
    :cond_2a
    const/16 v31, 0x0

    #@6dd
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_2a

    #@6de
    .line 632
    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_23
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@6e1
    move-object/from16 v0, p2

    #@6e3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e6
    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e9
    move-result v3

    #@6ea
    if-eqz v3, :cond_2b

    #@6ec
    .line 635
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f3
    move-result-object v31

    #@6f4
    check-cast v31, Landroid/accounts/Account;

    #@6f6
    .line 641
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f9
    move-result-object v12

    #@6fa
    .line 643
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6fd
    move-result v34

    #@6fe
    .line 644
    .restart local v34    # "_arg2":I
    move-object/from16 v0, p0

    #@700
    move-object/from16 v1, v31

    #@702
    move/from16 v2, v34

    #@704
    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@707
    move-result v39

    #@708
    .line 645
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    .line 646
    if-eqz v39, :cond_2c

    #@70d
    const/4 v3, 0x1

    #@70e
    :goto_2c
    move-object/from16 v0, p3

    #@710
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@713
    .line 647
    const/4 v3, 0x1

    #@714
    return v3

    #@715
    .line 638
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    .end local v39    # "_result":Z
    :cond_2b
    const/16 v31, 0x0

    #@717
    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_2b

    #@718
    .line 646
    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_arg2":I
    .restart local v39    # "_result":Z
    :cond_2c
    const/4 v3, 0x0

    #@719
    goto :goto_2c

    #@71a
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
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
