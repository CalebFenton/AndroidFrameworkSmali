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

.field static final TRANSACTION_addSharedAccountsFromParentUser:I = 0x20

.field static final TRANSACTION_clearPassword:I = 0x13

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1b

.field static final TRANSACTION_copyAccountToUser:I = 0xe

.field static final TRANSACTION_editProperties:I = 0x1a

.field static final TRANSACTION_finishSessionAsUser:I = 0x26

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

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1e

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0xf

.field static final TRANSACTION_isCredentialsUpdateSuggested:I = 0x28

.field static final TRANSACTION_peekAuthToken:I = 0x10

.field static final TRANSACTION_removeAccount:I = 0xb

.field static final TRANSACTION_removeAccountAsUser:I = 0xc

.field static final TRANSACTION_removeAccountExplicitly:I = 0xd

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x1f

.field static final TRANSACTION_renameAccount:I = 0x21

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x23

.field static final TRANSACTION_setAuthToken:I = 0x11

.field static final TRANSACTION_setPassword:I = 0x12

.field static final TRANSACTION_setUserData:I = 0x14

.field static final TRANSACTION_someUserHasAccount:I = 0x27

.field static final TRANSACTION_startAddAccountSession:I = 0x24

.field static final TRANSACTION_startUpdateCredentialsSession:I = 0x25

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
    .locals 48
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
    .line 767
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
    move-result-object v37

    #@28
    check-cast v37, Landroid/accounts/Account;

    #@2a
    .line 59
    :goto_0
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v37

    #@2e
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    #@31
    move-result-object v44

    #@32
    .line 60
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    .line 61
    move-object/from16 v0, p3

    #@37
    move-object/from16 v1, v44

    #@39
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 62
    const/4 v3, 0x1

    #@3d
    return v3

    #@3e
    .line 57
    .end local v44    # "_result":Ljava/lang/String;
    :cond_0
    const/16 v37, 0x0

    #@40
    .local v37, "_arg0":Landroid/accounts/Account;
    goto :goto_0

    #@41
    .line 66
    .end local v37    # "_arg0":Landroid/accounts/Account;
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
    move-result-object v37

    #@57
    check-cast v37, Landroid/accounts/Account;

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
    move-object/from16 v1, v37

    #@61
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v44

    #@65
    .line 77
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 78
    move-object/from16 v0, p3

    #@6a
    move-object/from16 v1, v44

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
    .end local v44    # "_result":Ljava/lang/String;
    :cond_1
    const/16 v37, 0x0

    #@73
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    #@74
    .line 83
    .end local v37    # "_arg0":Landroid/accounts/Account;
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
    move-result v36

    #@80
    .line 86
    .local v36, "_arg0":I
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v36

    #@84
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    #@87
    move-result-object v47

    #@88
    .line 87
    .local v47, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b
    .line 88
    const/4 v3, 0x1

    #@8c
    move-object/from16 v0, p3

    #@8e
    move-object/from16 v1, v47

    #@90
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@93
    .line 89
    const/4 v3, 0x1

    #@94
    return v3

    #@95
    .line 93
    .end local v36    # "_arg0":I
    .end local v47    # "_result":[Landroid/accounts/AuthenticatorDescription;
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
    move-result-object v38

    #@a1
    .line 97
    .local v38, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a4
    move-result-object v12

    #@a5
    .line 98
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a7
    move-object/from16 v1, v38

    #@a9
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    #@ac
    move-result-object v46

    #@ad
    .line 99
    .local v46, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    .line 100
    const/4 v3, 0x1

    #@b1
    move-object/from16 v0, p3

    #@b3
    move-object/from16 v1, v46

    #@b5
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@b8
    .line 101
    const/4 v3, 0x1

    #@b9
    return v3

    #@ba
    .line 105
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":[Landroid/accounts/Account;
    :sswitch_5
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v38

    #@c6
    .line 109
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v39

    #@ca
    .line 111
    .local v39, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    .line 112
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d0
    move-object/from16 v1, v38

    #@d2
    move/from16 v2, v39

    #@d4
    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@d7
    move-result-object v46

    #@d8
    .line 113
    .restart local v46    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    .line 114
    const/4 v3, 0x1

    #@dc
    move-object/from16 v0, p3

    #@de
    move-object/from16 v1, v46

    #@e0
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@e3
    .line 115
    const/4 v3, 0x1

    #@e4
    return v3

    #@e5
    .line 119
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":I
    .end local v46    # "_result":[Landroid/accounts/Account;
    :sswitch_6
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@e8
    move-object/from16 v0, p2

    #@ea
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ed
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f0
    move-result-object v38

    #@f1
    .line 123
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f4
    move-result-object v12

    #@f5
    .line 125
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f8
    move-result-object v6

    #@f9
    .line 126
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v38

    #@fd
    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    #@100
    move-result-object v46

    #@101
    .line 127
    .restart local v46    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 128
    const/4 v3, 0x1

    #@105
    move-object/from16 v0, p3

    #@107
    move-object/from16 v1, v46

    #@109
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@10c
    .line 129
    const/4 v3, 0x1

    #@10d
    return v3

    #@10e
    .line 133
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":[Landroid/accounts/Account;
    :sswitch_7
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@119
    move-result-object v38

    #@11a
    .line 137
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v39

    #@11e
    .line 139
    .restart local v39    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    .line 140
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@124
    move-object/from16 v1, v38

    #@126
    move/from16 v2, v39

    #@128
    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    #@12b
    move-result-object v46

    #@12c
    .line 141
    .restart local v46    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    .line 142
    const/4 v3, 0x1

    #@130
    move-object/from16 v0, p3

    #@132
    move-object/from16 v1, v46

    #@134
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@137
    .line 143
    const/4 v3, 0x1

    #@138
    return v3

    #@139
    .line 147
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":I
    .end local v46    # "_result":[Landroid/accounts/Account;
    :sswitch_8
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@13c
    move-object/from16 v0, p2

    #@13e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@144
    move-result-object v3

    #@145
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@148
    move-result-object v4

    #@149
    .line 151
    .local v4, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v3

    #@14d
    if-eqz v3, :cond_2

    #@14f
    .line 152
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@156
    move-result-object v5

    #@157
    check-cast v5, Landroid/accounts/Account;

    #@159
    .line 158
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@15c
    move-result-object v41

    #@15d
    .line 160
    .local v41, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@160
    move-result-object v43

    #@161
    .line 161
    .local v43, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v41

    #@165
    move-object/from16 v2, v43

    #@167
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    #@16a
    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 163
    const/4 v3, 0x1

    #@16e
    return v3

    #@16f
    .line 155
    .end local v41    # "_arg2":[Ljava/lang/String;
    .end local v43    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@170
    .local v5, "_arg1":Landroid/accounts/Account;
    goto :goto_2

    #@171
    .line 167
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17c
    move-result-object v3

    #@17d
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@180
    move-result-object v4

    #@181
    .line 171
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@184
    move-result-object v12

    #@185
    .line 173
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@188
    move-result-object v41

    #@189
    .line 175
    .restart local v41    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18c
    move-result-object v43

    #@18d
    .line 176
    .restart local v43    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18f
    move-object/from16 v1, v41

    #@191
    move-object/from16 v2, v43

    #@193
    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@196
    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@199
    .line 178
    const/4 v3, 0x1

    #@19a
    return v3

    #@19b
    .line 182
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg2":[Ljava/lang/String;
    .end local v43    # "_arg3":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@19e
    move-object/from16 v0, p2

    #@1a0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v3

    #@1a7
    if-eqz v3, :cond_3

    #@1a9
    .line 185
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ab
    move-object/from16 v0, p2

    #@1ad
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b0
    move-result-object v37

    #@1b1
    check-cast v37, Landroid/accounts/Account;

    #@1b3
    .line 191
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b6
    move-result-object v12

    #@1b7
    .line 193
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ba
    move-result v3

    #@1bb
    if-eqz v3, :cond_4

    #@1bd
    .line 194
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c4
    move-result-object v27

    #@1c5
    check-cast v27, Landroid/os/Bundle;

    #@1c7
    .line 199
    :goto_4
    move-object/from16 v0, p0

    #@1c9
    move-object/from16 v1, v37

    #@1cb
    move-object/from16 v2, v27

    #@1cd
    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    #@1d0
    move-result v45

    #@1d1
    .line 200
    .local v45, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d4
    .line 201
    if-eqz v45, :cond_5

    #@1d6
    const/4 v3, 0x1

    #@1d7
    :goto_5
    move-object/from16 v0, p3

    #@1d9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1dc
    .line 202
    const/4 v3, 0x1

    #@1dd
    return v3

    #@1de
    .line 188
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :cond_3
    const/16 v37, 0x0

    #@1e0
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    #@1e1
    .line 197
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    #@1e3
    .local v27, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    #@1e4
    .line 201
    .end local v27    # "_arg2":Landroid/os/Bundle;
    .restart local v45    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    #@1e5
    goto :goto_5

    #@1e6
    .line 206
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f1
    move-result-object v3

    #@1f2
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@1f5
    move-result-object v4

    #@1f6
    .line 210
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f9
    move-result v3

    #@1fa
    if-eqz v3, :cond_6

    #@1fc
    .line 211
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@203
    move-result-object v5

    #@204
    check-cast v5, Landroid/accounts/Account;

    #@206
    .line 217
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v3

    #@20a
    if-eqz v3, :cond_7

    #@20c
    const/16 v33, 0x1

    #@20e
    .line 218
    .local v33, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    #@210
    move/from16 v1, v33

    #@212
    invoke-virtual {v0, v4, v5, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    #@215
    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@218
    .line 220
    const/4 v3, 0x1

    #@219
    return v3

    #@21a
    .line 214
    .end local v33    # "_arg2":Z
    :cond_6
    const/4 v5, 0x0

    #@21b
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_6

    #@21c
    .line 217
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_7
    const/16 v33, 0x0

    #@21e
    goto :goto_7

    #@21f
    .line 224
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    :sswitch_c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@222
    move-object/from16 v0, p2

    #@224
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@227
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22a
    move-result-object v3

    #@22b
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@22e
    move-result-object v4

    #@22f
    .line 228
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v3

    #@233
    if-eqz v3, :cond_8

    #@235
    .line 229
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@237
    move-object/from16 v0, p2

    #@239
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23c
    move-result-object v5

    #@23d
    check-cast v5, Landroid/accounts/Account;

    #@23f
    .line 235
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@242
    move-result v3

    #@243
    if-eqz v3, :cond_9

    #@245
    const/16 v33, 0x1

    #@247
    .line 237
    .local v33, "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24a
    move-result v42

    #@24b
    .line 238
    .local v42, "_arg3":I
    move-object/from16 v0, p0

    #@24d
    move/from16 v1, v33

    #@24f
    move/from16 v2, v42

    #@251
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    #@254
    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@257
    .line 240
    const/4 v3, 0x1

    #@258
    return v3

    #@259
    .line 232
    .end local v33    # "_arg2":Z
    .end local v42    # "_arg3":I
    :cond_8
    const/4 v5, 0x0

    #@25a
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    #@25b
    .line 235
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_9
    const/16 v33, 0x0

    #@25d
    .restart local v33    # "_arg2":Z
    goto :goto_9

    #@25e
    .line 244
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v33    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@266
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v3

    #@26a
    if-eqz v3, :cond_a

    #@26c
    .line 247
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26e
    move-object/from16 v0, p2

    #@270
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@273
    move-result-object v37

    #@274
    check-cast v37, Landroid/accounts/Account;

    #@276
    .line 252
    :goto_a
    move-object/from16 v0, p0

    #@278
    move-object/from16 v1, v37

    #@27a
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    #@27d
    move-result v45

    #@27e
    .line 253
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 254
    if-eqz v45, :cond_b

    #@283
    const/4 v3, 0x1

    #@284
    :goto_b
    move-object/from16 v0, p3

    #@286
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@289
    .line 255
    const/4 v3, 0x1

    #@28a
    return v3

    #@28b
    .line 250
    .end local v45    # "_result":Z
    :cond_a
    const/16 v37, 0x0

    #@28d
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    #@28e
    .line 254
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v45    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    #@28f
    goto :goto_b

    #@290
    .line 259
    .end local v45    # "_result":Z
    :sswitch_e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@298
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29b
    move-result-object v3

    #@29c
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@29f
    move-result-object v4

    #@2a0
    .line 263
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a3
    move-result v3

    #@2a4
    if-eqz v3, :cond_c

    #@2a6
    .line 264
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ad
    move-result-object v5

    #@2ae
    check-cast v5, Landroid/accounts/Account;

    #@2b0
    .line 270
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b3
    move-result v40

    #@2b4
    .line 272
    .local v40, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b7
    move-result v42

    #@2b8
    .line 273
    .restart local v42    # "_arg3":I
    move-object/from16 v0, p0

    #@2ba
    move/from16 v1, v40

    #@2bc
    move/from16 v2, v42

    #@2be
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@2c1
    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c4
    .line 275
    const/4 v3, 0x1

    #@2c5
    return v3

    #@2c6
    .line 267
    .end local v40    # "_arg2":I
    .end local v42    # "_arg3":I
    :cond_c
    const/4 v5, 0x0

    #@2c7
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_c

    #@2c8
    .line 279
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d3
    move-result-object v38

    #@2d4
    .line 283
    .restart local v38    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d7
    move-result-object v12

    #@2d8
    .line 284
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2da
    move-object/from16 v1, v38

    #@2dc
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    #@2df
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e2
    .line 286
    const/4 v3, 0x1

    #@2e3
    return v3

    #@2e4
    .line 290
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@2e7
    move-object/from16 v0, p2

    #@2e9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ec
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef
    move-result v3

    #@2f0
    if-eqz v3, :cond_d

    #@2f2
    .line 293
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f4
    move-object/from16 v0, p2

    #@2f6
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f9
    move-result-object v37

    #@2fa
    check-cast v37, Landroid/accounts/Account;

    #@2fc
    .line 299
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v12

    #@300
    .line 300
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    move-object/from16 v1, v37

    #@304
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    #@307
    move-result-object v44

    #@308
    .line 301
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30b
    .line 302
    move-object/from16 v0, p3

    #@30d
    move-object/from16 v1, v44

    #@30f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@312
    .line 303
    const/4 v3, 0x1

    #@313
    return v3

    #@314
    .line 296
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v37, 0x0

    #@316
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    #@317
    .line 307
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_11
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31f
    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@322
    move-result v3

    #@323
    if-eqz v3, :cond_e

    #@325
    .line 310
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@327
    move-object/from16 v0, p2

    #@329
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32c
    move-result-object v37

    #@32d
    check-cast v37, Landroid/accounts/Account;

    #@32f
    .line 316
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@332
    move-result-object v12

    #@333
    .line 318
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@336
    move-result-object v6

    #@337
    .line 319
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@339
    move-object/from16 v1, v37

    #@33b
    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@33e
    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@341
    .line 321
    const/4 v3, 0x1

    #@342
    return v3

    #@343
    .line 313
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v37, 0x0

    #@345
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    #@346
    .line 325
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@349
    move-object/from16 v0, p2

    #@34b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34e
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@351
    move-result v3

    #@352
    if-eqz v3, :cond_f

    #@354
    .line 328
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@356
    move-object/from16 v0, p2

    #@358
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35b
    move-result-object v37

    #@35c
    check-cast v37, Landroid/accounts/Account;

    #@35e
    .line 334
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@361
    move-result-object v12

    #@362
    .line 335
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@364
    move-object/from16 v1, v37

    #@366
    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    #@369
    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36c
    .line 337
    const/4 v3, 0x1

    #@36d
    return v3

    #@36e
    .line 331
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_f
    const/16 v37, 0x0

    #@370
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    #@371
    .line 341
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@374
    move-object/from16 v0, p2

    #@376
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@379
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v3

    #@37d
    if-eqz v3, :cond_10

    #@37f
    .line 344
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@381
    move-object/from16 v0, p2

    #@383
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@386
    move-result-object v37

    #@387
    check-cast v37, Landroid/accounts/Account;

    #@389
    .line 349
    :goto_10
    move-object/from16 v0, p0

    #@38b
    move-object/from16 v1, v37

    #@38d
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    #@390
    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@393
    .line 351
    const/4 v3, 0x1

    #@394
    return v3

    #@395
    .line 347
    :cond_10
    const/16 v37, 0x0

    #@397
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    #@398
    .line 355
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@39b
    move-object/from16 v0, p2

    #@39d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a0
    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a3
    move-result v3

    #@3a4
    if-eqz v3, :cond_11

    #@3a6
    .line 358
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ad
    move-result-object v37

    #@3ae
    check-cast v37, Landroid/accounts/Account;

    #@3b0
    .line 364
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b3
    move-result-object v12

    #@3b4
    .line 366
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b7
    move-result-object v6

    #@3b8
    .line 367
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ba
    move-object/from16 v1, v37

    #@3bc
    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    #@3bf
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c2
    .line 369
    const/4 v3, 0x1

    #@3c3
    return v3

    #@3c4
    .line 361
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_11
    const/16 v37, 0x0

    #@3c6
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    #@3c7
    .line 373
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_15
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@3ca
    move-object/from16 v0, p2

    #@3cc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3cf
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d2
    move-result v3

    #@3d3
    if-eqz v3, :cond_12

    #@3d5
    .line 376
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3dc
    move-result-object v37

    #@3dd
    check-cast v37, Landroid/accounts/Account;

    #@3df
    .line 382
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e2
    move-result-object v12

    #@3e3
    .line 384
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e6
    move-result v40

    #@3e7
    .line 386
    .restart local v40    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ea
    move-result v3

    #@3eb
    if-eqz v3, :cond_13

    #@3ed
    const/4 v7, 0x1

    #@3ee
    .line 387
    .local v7, "_arg3":Z
    :goto_13
    move-object/from16 v0, p0

    #@3f0
    move-object/from16 v1, v37

    #@3f2
    move/from16 v2, v40

    #@3f4
    invoke-virtual {v0, v1, v12, v2, v7}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    #@3f7
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fa
    .line 389
    const/4 v3, 0x1

    #@3fb
    return v3

    #@3fc
    .line 379
    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    :cond_12
    const/16 v37, 0x0

    #@3fe
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    #@3ff
    .line 386
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v40    # "_arg2":I
    :cond_13
    const/4 v7, 0x0

    #@400
    goto :goto_13

    #@401
    .line 393
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    :sswitch_16
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@404
    move-object/from16 v0, p2

    #@406
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@409
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40c
    move-result-object v3

    #@40d
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@410
    move-result-object v4

    #@411
    .line 397
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@414
    move-result v3

    #@415
    if-eqz v3, :cond_14

    #@417
    .line 398
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@419
    move-object/from16 v0, p2

    #@41b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41e
    move-result-object v5

    #@41f
    check-cast v5, Landroid/accounts/Account;

    #@421
    .line 404
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@424
    move-result-object v6

    #@425
    .line 406
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@428
    move-result v3

    #@429
    if-eqz v3, :cond_15

    #@42b
    const/4 v7, 0x1

    #@42c
    .line 408
    .local v7, "_arg3":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42f
    move-result v3

    #@430
    if-eqz v3, :cond_16

    #@432
    const/4 v8, 0x1

    #@433
    .line 410
    .local v8, "_arg4":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@436
    move-result v3

    #@437
    if-eqz v3, :cond_17

    #@439
    .line 411
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43b
    move-object/from16 v0, p2

    #@43d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@440
    move-result-object v9

    #@441
    check-cast v9, Landroid/os/Bundle;

    #@443
    :goto_17
    move-object/from16 v3, p0

    #@445
    .line 416
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    #@448
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44b
    .line 418
    const/4 v3, 0x1

    #@44c
    return v3

    #@44d
    .line 401
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    :cond_14
    const/4 v5, 0x0

    #@44e
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_14

    #@44f
    .line 406
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    #@450
    .restart local v7    # "_arg3":Z
    goto :goto_15

    #@451
    .line 408
    :cond_16
    const/4 v8, 0x0

    #@452
    .restart local v8    # "_arg4":Z
    goto :goto_16

    #@453
    .line 414
    :cond_17
    const/4 v9, 0x0

    #@454
    .local v9, "_arg5":Landroid/os/Bundle;
    goto :goto_17

    #@455
    .line 422
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@458
    move-object/from16 v0, p2

    #@45a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45d
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@460
    move-result-object v3

    #@461
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@464
    move-result-object v4

    #@465
    .line 426
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@468
    move-result-object v12

    #@469
    .line 428
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46c
    move-result-object v6

    #@46d
    .line 430
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@470
    move-result-object v14

    #@471
    .line 432
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@474
    move-result v3

    #@475
    if-eqz v3, :cond_18

    #@477
    const/4 v8, 0x1

    #@478
    .line 434
    .restart local v8    # "_arg4":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47b
    move-result v3

    #@47c
    if-eqz v3, :cond_19

    #@47e
    .line 435
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@480
    move-object/from16 v0, p2

    #@482
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@485
    move-result-object v9

    #@486
    check-cast v9, Landroid/os/Bundle;

    #@488
    :goto_19
    move-object/from16 v10, p0

    #@48a
    move-object v11, v4

    #@48b
    move-object v13, v6

    #@48c
    move v15, v8

    #@48d
    move-object/from16 v16, v9

    #@48f
    .line 440
    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@492
    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@495
    .line 442
    const/4 v3, 0x1

    #@496
    return v3

    #@497
    .line 432
    .end local v8    # "_arg4":Z
    :cond_18
    const/4 v8, 0x0

    #@498
    .restart local v8    # "_arg4":Z
    goto :goto_18

    #@499
    .line 438
    :cond_19
    const/4 v9, 0x0

    #@49a
    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_19

    #@49b
    .line 446
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@49e
    move-object/from16 v0, p2

    #@4a0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a3
    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a6
    move-result-object v3

    #@4a7
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@4aa
    move-result-object v4

    #@4ab
    .line 450
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ae
    move-result-object v12

    #@4af
    .line 452
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b2
    move-result-object v6

    #@4b3
    .line 454
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@4b6
    move-result-object v14

    #@4b7
    .line 456
    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ba
    move-result v3

    #@4bb
    if-eqz v3, :cond_1a

    #@4bd
    const/4 v8, 0x1

    #@4be
    .line 458
    .restart local v8    # "_arg4":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c1
    move-result v3

    #@4c2
    if-eqz v3, :cond_1b

    #@4c4
    .line 459
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c6
    move-object/from16 v0, p2

    #@4c8
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4cb
    move-result-object v9

    #@4cc
    check-cast v9, Landroid/os/Bundle;

    #@4ce
    .line 465
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d1
    move-result v17

    #@4d2
    .local v17, "_arg6":I
    move-object/from16 v10, p0

    #@4d4
    move-object v11, v4

    #@4d5
    move-object v13, v6

    #@4d6
    move v15, v8

    #@4d7
    move-object/from16 v16, v9

    #@4d9
    .line 466
    invoke-virtual/range {v10 .. v17}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    #@4dc
    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4df
    .line 468
    const/4 v3, 0x1

    #@4e0
    return v3

    #@4e1
    .line 456
    .end local v8    # "_arg4":Z
    .end local v17    # "_arg6":I
    :cond_1a
    const/4 v8, 0x0

    #@4e2
    .restart local v8    # "_arg4":Z
    goto :goto_1a

    #@4e3
    .line 462
    :cond_1b
    const/4 v9, 0x0

    #@4e4
    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_1b

    #@4e5
    .line 472
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@4e8
    move-object/from16 v0, p2

    #@4ea
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ed
    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f0
    move-result-object v3

    #@4f1
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@4f4
    move-result-object v4

    #@4f5
    .line 476
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f8
    move-result v3

    #@4f9
    if-eqz v3, :cond_1c

    #@4fb
    .line 477
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4fd
    move-object/from16 v0, p2

    #@4ff
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@502
    move-result-object v5

    #@503
    check-cast v5, Landroid/accounts/Account;

    #@505
    .line 483
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@508
    move-result-object v6

    #@509
    .line 485
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50c
    move-result v3

    #@50d
    if-eqz v3, :cond_1d

    #@50f
    const/4 v7, 0x1

    #@510
    .line 487
    .restart local v7    # "_arg3":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@513
    move-result v3

    #@514
    if-eqz v3, :cond_1e

    #@516
    .line 488
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@518
    move-object/from16 v0, p2

    #@51a
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51d
    move-result-object v23

    #@51e
    check-cast v23, Landroid/os/Bundle;

    #@520
    :goto_1e
    move-object/from16 v18, p0

    #@522
    move-object/from16 v19, v4

    #@524
    move-object/from16 v20, v5

    #@526
    move-object/from16 v21, v6

    #@528
    move/from16 v22, v7

    #@52a
    .line 493
    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@52d
    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@530
    .line 495
    const/4 v3, 0x1

    #@531
    return v3

    #@532
    .line 480
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_1c
    const/4 v5, 0x0

    #@533
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_1c

    #@534
    .line 485
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v7, 0x0

    #@535
    .restart local v7    # "_arg3":Z
    goto :goto_1d

    #@536
    .line 491
    :cond_1e
    const/16 v23, 0x0

    #@538
    .local v23, "_arg4":Landroid/os/Bundle;
    goto :goto_1e

    #@539
    .line 499
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@53c
    move-object/from16 v0, p2

    #@53e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@541
    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@544
    move-result-object v3

    #@545
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@548
    move-result-object v4

    #@549
    .line 503
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54c
    move-result-object v12

    #@54d
    .line 505
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@550
    move-result v3

    #@551
    if-eqz v3, :cond_1f

    #@553
    const/16 v33, 0x1

    #@555
    .line 506
    .local v33, "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    #@557
    move/from16 v1, v33

    #@559
    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    #@55c
    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55f
    .line 508
    const/4 v3, 0x1

    #@560
    return v3

    #@561
    .line 505
    .end local v33    # "_arg2":Z
    :cond_1f
    const/16 v33, 0x0

    #@563
    goto :goto_1f

    #@564
    .line 512
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@567
    move-object/from16 v0, p2

    #@569
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56c
    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@56f
    move-result-object v3

    #@570
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@573
    move-result-object v4

    #@574
    .line 516
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@577
    move-result v3

    #@578
    if-eqz v3, :cond_20

    #@57a
    .line 517
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57c
    move-object/from16 v0, p2

    #@57e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@581
    move-result-object v5

    #@582
    check-cast v5, Landroid/accounts/Account;

    #@584
    .line 523
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@587
    move-result v3

    #@588
    if-eqz v3, :cond_21

    #@58a
    .line 524
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58c
    move-object/from16 v0, p2

    #@58e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@591
    move-result-object v27

    #@592
    check-cast v27, Landroid/os/Bundle;

    #@594
    .line 530
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@597
    move-result v3

    #@598
    if-eqz v3, :cond_22

    #@59a
    const/4 v7, 0x1

    #@59b
    .line 532
    .restart local v7    # "_arg3":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59e
    move-result v29

    #@59f
    .local v29, "_arg4":I
    move-object/from16 v24, p0

    #@5a1
    move-object/from16 v25, v4

    #@5a3
    move-object/from16 v26, v5

    #@5a5
    move/from16 v28, v7

    #@5a7
    .line 533
    invoke-virtual/range {v24 .. v29}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    #@5aa
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ad
    .line 535
    const/4 v3, 0x1

    #@5ae
    return v3

    #@5af
    .line 520
    .end local v7    # "_arg3":Z
    .end local v29    # "_arg4":I
    :cond_20
    const/4 v5, 0x0

    #@5b0
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_20

    #@5b1
    .line 527
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_21
    const/16 v27, 0x0

    #@5b3
    .restart local v27    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    #@5b4
    .line 530
    .end local v27    # "_arg2":Landroid/os/Bundle;
    :cond_22
    const/4 v7, 0x0

    #@5b5
    .restart local v7    # "_arg3":Z
    goto :goto_22

    #@5b6
    .line 539
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg3":Z
    :sswitch_1c
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5be
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c1
    move-result v3

    #@5c2
    if-eqz v3, :cond_23

    #@5c4
    .line 542
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c6
    move-object/from16 v0, p2

    #@5c8
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5cb
    move-result-object v37

    #@5cc
    check-cast v37, Landroid/accounts/Account;

    #@5ce
    .line 547
    :goto_23
    move-object/from16 v0, p0

    #@5d0
    move-object/from16 v1, v37

    #@5d2
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    #@5d5
    move-result v45

    #@5d6
    .line 548
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d9
    .line 549
    if-eqz v45, :cond_24

    #@5db
    const/4 v3, 0x1

    #@5dc
    :goto_24
    move-object/from16 v0, p3

    #@5de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5e1
    .line 550
    const/4 v3, 0x1

    #@5e2
    return v3

    #@5e3
    .line 545
    .end local v45    # "_result":Z
    :cond_23
    const/16 v37, 0x0

    #@5e5
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    #@5e6
    .line 549
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v45    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    #@5e7
    goto :goto_24

    #@5e8
    .line 554
    .end local v45    # "_result":Z
    :sswitch_1d
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@5eb
    move-object/from16 v0, p2

    #@5ed
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f0
    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f3
    move-result-object v3

    #@5f4
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@5f7
    move-result-object v4

    #@5f8
    .line 558
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5fb
    move-result-object v12

    #@5fc
    .line 560
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5ff
    move-result-object v6

    #@600
    .line 561
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@602
    invoke-virtual {v0, v4, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    #@605
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@608
    .line 563
    const/4 v3, 0x1

    #@609
    return v3

    #@60a
    .line 567
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@60d
    move-object/from16 v0, p2

    #@60f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@612
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@615
    move-result v36

    #@616
    .line 570
    .restart local v36    # "_arg0":I
    move-object/from16 v0, p0

    #@618
    move/from16 v1, v36

    #@61a
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    #@61d
    move-result-object v46

    #@61e
    .line 571
    .restart local v46    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@621
    .line 572
    const/4 v3, 0x1

    #@622
    move-object/from16 v0, p3

    #@624
    move-object/from16 v1, v46

    #@626
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@629
    .line 573
    const/4 v3, 0x1

    #@62a
    return v3

    #@62b
    .line 577
    .end local v36    # "_arg0":I
    .end local v46    # "_result":[Landroid/accounts/Account;
    :sswitch_1f
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@62e
    move-object/from16 v0, p2

    #@630
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@633
    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@636
    move-result v3

    #@637
    if-eqz v3, :cond_25

    #@639
    .line 580
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63b
    move-object/from16 v0, p2

    #@63d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@640
    move-result-object v37

    #@641
    check-cast v37, Landroid/accounts/Account;

    #@643
    .line 586
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@646
    move-result v39

    #@647
    .line 587
    .restart local v39    # "_arg1":I
    move-object/from16 v0, p0

    #@649
    move-object/from16 v1, v37

    #@64b
    move/from16 v2, v39

    #@64d
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    #@650
    move-result v45

    #@651
    .line 588
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@654
    .line 589
    if-eqz v45, :cond_26

    #@656
    const/4 v3, 0x1

    #@657
    :goto_26
    move-object/from16 v0, p3

    #@659
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@65c
    .line 590
    const/4 v3, 0x1

    #@65d
    return v3

    #@65e
    .line 583
    .end local v39    # "_arg1":I
    .end local v45    # "_result":Z
    :cond_25
    const/16 v37, 0x0

    #@660
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    #@661
    .line 589
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v39    # "_arg1":I
    .restart local v45    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    #@662
    goto :goto_26

    #@663
    .line 594
    .end local v39    # "_arg1":I
    .end local v45    # "_result":Z
    :sswitch_20
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@666
    move-object/from16 v0, p2

    #@668
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66b
    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66e
    move-result v36

    #@66f
    .line 598
    .restart local v36    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@672
    move-result v39

    #@673
    .line 599
    .restart local v39    # "_arg1":I
    move-object/from16 v0, p0

    #@675
    move/from16 v1, v36

    #@677
    move/from16 v2, v39

    #@679
    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountsFromParentUser(II)V

    #@67c
    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67f
    .line 601
    const/4 v3, 0x1

    #@680
    return v3

    #@681
    .line 605
    .end local v36    # "_arg0":I
    .end local v39    # "_arg1":I
    :sswitch_21
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@684
    move-object/from16 v0, p2

    #@686
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@689
    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@68c
    move-result-object v3

    #@68d
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@690
    move-result-object v4

    #@691
    .line 609
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@694
    move-result v3

    #@695
    if-eqz v3, :cond_27

    #@697
    .line 610
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@699
    move-object/from16 v0, p2

    #@69b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69e
    move-result-object v5

    #@69f
    check-cast v5, Landroid/accounts/Account;

    #@6a1
    .line 616
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6a4
    move-result-object v6

    #@6a5
    .line 617
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a7
    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    #@6aa
    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ad
    .line 619
    const/4 v3, 0x1

    #@6ae
    return v3

    #@6af
    .line 613
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_27
    const/4 v5, 0x0

    #@6b0
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_27

    #@6b1
    .line 623
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_22
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@6b4
    move-object/from16 v0, p2

    #@6b6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b9
    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6bc
    move-result v3

    #@6bd
    if-eqz v3, :cond_28

    #@6bf
    .line 626
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c1
    move-object/from16 v0, p2

    #@6c3
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6c6
    move-result-object v37

    #@6c7
    check-cast v37, Landroid/accounts/Account;

    #@6c9
    .line 631
    :goto_28
    move-object/from16 v0, p0

    #@6cb
    move-object/from16 v1, v37

    #@6cd
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    #@6d0
    move-result-object v44

    #@6d1
    .line 632
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d4
    .line 633
    move-object/from16 v0, p3

    #@6d6
    move-object/from16 v1, v44

    #@6d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6db
    .line 634
    const/4 v3, 0x1

    #@6dc
    return v3

    #@6dd
    .line 629
    .end local v44    # "_result":Ljava/lang/String;
    :cond_28
    const/16 v37, 0x0

    #@6df
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_28

    #@6e0
    .line 638
    .end local v37    # "_arg0":Landroid/accounts/Account;
    :sswitch_23
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@6e3
    move-object/from16 v0, p2

    #@6e5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e8
    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6eb
    move-result v3

    #@6ec
    if-eqz v3, :cond_29

    #@6ee
    .line 641
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f0
    move-object/from16 v0, p2

    #@6f2
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f5
    move-result-object v37

    #@6f6
    check-cast v37, Landroid/accounts/Account;

    #@6f8
    .line 647
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6fb
    move-result-object v12

    #@6fc
    .line 649
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ff
    move-result v40

    #@700
    .line 650
    .restart local v40    # "_arg2":I
    move-object/from16 v0, p0

    #@702
    move-object/from16 v1, v37

    #@704
    move/from16 v2, v40

    #@706
    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@709
    move-result v45

    #@70a
    .line 651
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70d
    .line 652
    if-eqz v45, :cond_2a

    #@70f
    const/4 v3, 0x1

    #@710
    :goto_2a
    move-object/from16 v0, p3

    #@712
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@715
    .line 653
    const/4 v3, 0x1

    #@716
    return v3

    #@717
    .line 644
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    .end local v45    # "_result":Z
    :cond_29
    const/16 v37, 0x0

    #@719
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_29

    #@71a
    .line 652
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v40    # "_arg2":I
    .restart local v45    # "_result":Z
    :cond_2a
    const/4 v3, 0x0

    #@71b
    goto :goto_2a

    #@71c
    .line 657
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":I
    .end local v45    # "_result":Z
    :sswitch_24
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@71f
    move-object/from16 v0, p2

    #@721
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@724
    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@727
    move-result-object v3

    #@728
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@72b
    move-result-object v4

    #@72c
    .line 661
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72f
    move-result-object v12

    #@730
    .line 663
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@733
    move-result-object v6

    #@734
    .line 665
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@737
    move-result-object v14

    #@738
    .line 667
    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73b
    move-result v3

    #@73c
    if-eqz v3, :cond_2b

    #@73e
    const/4 v8, 0x1

    #@73f
    .line 669
    .restart local v8    # "_arg4":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@742
    move-result v3

    #@743
    if-eqz v3, :cond_2c

    #@745
    .line 670
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@747
    move-object/from16 v0, p2

    #@749
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@74c
    move-result-object v9

    #@74d
    check-cast v9, Landroid/os/Bundle;

    #@74f
    :goto_2c
    move-object/from16 v10, p0

    #@751
    move-object v11, v4

    #@752
    move-object v13, v6

    #@753
    move v15, v8

    #@754
    move-object/from16 v16, v9

    #@756
    .line 675
    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@759
    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75c
    .line 677
    const/4 v3, 0x1

    #@75d
    return v3

    #@75e
    .line 667
    .end local v8    # "_arg4":Z
    :cond_2b
    const/4 v8, 0x0

    #@75f
    .restart local v8    # "_arg4":Z
    goto :goto_2b

    #@760
    .line 673
    :cond_2c
    const/4 v9, 0x0

    #@761
    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_2c

    #@762
    .line 681
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@765
    move-object/from16 v0, p2

    #@767
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76a
    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@76d
    move-result-object v3

    #@76e
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@771
    move-result-object v4

    #@772
    .line 685
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@775
    move-result v3

    #@776
    if-eqz v3, :cond_2d

    #@778
    .line 686
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@77a
    move-object/from16 v0, p2

    #@77c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77f
    move-result-object v5

    #@780
    check-cast v5, Landroid/accounts/Account;

    #@782
    .line 692
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@785
    move-result-object v6

    #@786
    .line 694
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@789
    move-result v3

    #@78a
    if-eqz v3, :cond_2e

    #@78c
    const/4 v7, 0x1

    #@78d
    .line 696
    .restart local v7    # "_arg3":Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@790
    move-result v3

    #@791
    if-eqz v3, :cond_2f

    #@793
    .line 697
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@795
    move-object/from16 v0, p2

    #@797
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@79a
    move-result-object v23

    #@79b
    check-cast v23, Landroid/os/Bundle;

    #@79d
    :goto_2f
    move-object/from16 v18, p0

    #@79f
    move-object/from16 v19, v4

    #@7a1
    move-object/from16 v20, v5

    #@7a3
    move-object/from16 v21, v6

    #@7a5
    move/from16 v22, v7

    #@7a7
    .line 702
    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@7aa
    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ad
    .line 704
    const/4 v3, 0x1

    #@7ae
    return v3

    #@7af
    .line 689
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_2d
    const/4 v5, 0x0

    #@7b0
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_2d

    #@7b1
    .line 694
    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_2e
    const/4 v7, 0x0

    #@7b2
    .restart local v7    # "_arg3":Z
    goto :goto_2e

    #@7b3
    .line 700
    :cond_2f
    const/16 v23, 0x0

    #@7b5
    .restart local v23    # "_arg4":Landroid/os/Bundle;
    goto :goto_2f

    #@7b6
    .line 708
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@7b9
    move-object/from16 v0, p2

    #@7bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7be
    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c1
    move-result-object v3

    #@7c2
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@7c5
    move-result-object v4

    #@7c6
    .line 712
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c9
    move-result v3

    #@7ca
    if-eqz v3, :cond_30

    #@7cc
    .line 713
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7ce
    move-object/from16 v0, p2

    #@7d0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d3
    move-result-object v32

    #@7d4
    check-cast v32, Landroid/os/Bundle;

    #@7d6
    .line 719
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d9
    move-result v3

    #@7da
    if-eqz v3, :cond_31

    #@7dc
    const/16 v33, 0x1

    #@7de
    .line 721
    .local v33, "_arg2":Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e1
    move-result v3

    #@7e2
    if-eqz v3, :cond_32

    #@7e4
    .line 722
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7eb
    move-result-object v34

    #@7ec
    check-cast v34, Landroid/os/Bundle;

    #@7ee
    .line 728
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f1
    move-result v29

    #@7f2
    .restart local v29    # "_arg4":I
    move-object/from16 v30, p0

    #@7f4
    move-object/from16 v31, v4

    #@7f6
    move/from16 v35, v29

    #@7f8
    .line 729
    invoke-virtual/range {v30 .. v35}, Landroid/accounts/IAccountManager$Stub;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    #@7fb
    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fe
    .line 731
    const/4 v3, 0x1

    #@7ff
    return v3

    #@800
    .line 716
    .end local v29    # "_arg4":I
    .end local v33    # "_arg2":Z
    :cond_30
    const/16 v32, 0x0

    #@802
    .local v32, "_arg1":Landroid/os/Bundle;
    goto :goto_30

    #@803
    .line 719
    .end local v32    # "_arg1":Landroid/os/Bundle;
    :cond_31
    const/16 v33, 0x0

    #@805
    .restart local v33    # "_arg2":Z
    goto :goto_31

    #@806
    .line 725
    :cond_32
    const/16 v34, 0x0

    #@808
    .local v34, "_arg3":Landroid/os/Bundle;
    goto :goto_32

    #@809
    .line 735
    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v33    # "_arg2":Z
    .end local v34    # "_arg3":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@80c
    move-object/from16 v0, p2

    #@80e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@811
    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@814
    move-result v3

    #@815
    if-eqz v3, :cond_33

    #@817
    .line 738
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@819
    move-object/from16 v0, p2

    #@81b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81e
    move-result-object v37

    #@81f
    check-cast v37, Landroid/accounts/Account;

    #@821
    .line 743
    :goto_33
    move-object/from16 v0, p0

    #@823
    move-object/from16 v1, v37

    #@825
    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->someUserHasAccount(Landroid/accounts/Account;)Z

    #@828
    move-result v45

    #@829
    .line 744
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82c
    .line 745
    if-eqz v45, :cond_34

    #@82e
    const/4 v3, 0x1

    #@82f
    :goto_34
    move-object/from16 v0, p3

    #@831
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@834
    .line 746
    const/4 v3, 0x1

    #@835
    return v3

    #@836
    .line 741
    .end local v45    # "_result":Z
    :cond_33
    const/16 v37, 0x0

    #@838
    .restart local v37    # "_arg0":Landroid/accounts/Account;
    goto :goto_33

    #@839
    .line 745
    .end local v37    # "_arg0":Landroid/accounts/Account;
    .restart local v45    # "_result":Z
    :cond_34
    const/4 v3, 0x0

    #@83a
    goto :goto_34

    #@83b
    .line 750
    .end local v45    # "_result":Z
    :sswitch_28
    const-string/jumbo v3, "android.accounts.IAccountManager"

    #@83e
    move-object/from16 v0, p2

    #@840
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@843
    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@846
    move-result-object v3

    #@847
    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    #@84a
    move-result-object v4

    #@84b
    .line 754
    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84e
    move-result v3

    #@84f
    if-eqz v3, :cond_35

    #@851
    .line 755
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@853
    move-object/from16 v0, p2

    #@855
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@858
    move-result-object v5

    #@859
    check-cast v5, Landroid/accounts/Account;

    #@85b
    .line 761
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85e
    move-result-object v6

    #@85f
    .line 762
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@861
    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    #@864
    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@867
    .line 764
    const/4 v3, 0x1

    #@868
    return v3

    #@869
    .line 758
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_35
    const/4 v5, 0x0

    #@86a
    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_35

    #@86b
    .line 42
    nop

    #@86c
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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
