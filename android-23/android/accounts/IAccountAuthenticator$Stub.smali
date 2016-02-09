.class public abstract Landroid/accounts/IAccountAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthenticator.java"

# interfaces
.implements Landroid/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticator"

.field static final TRANSACTION_addAccount:I = 0x1

.field static final TRANSACTION_addAccountFromCredentials:I = 0xa

.field static final TRANSACTION_confirmCredentials:I = 0x2

.field static final TRANSACTION_editProperties:I = 0x6

.field static final TRANSACTION_getAccountCredentialsForCloning:I = 0x9

.field static final TRANSACTION_getAccountRemovalAllowed:I = 0x8

.field static final TRANSACTION_getAuthToken:I = 0x3

.field static final TRANSACTION_getAuthTokenLabel:I = 0x4

.field static final TRANSACTION_hasFeatures:I = 0x7

.field static final TRANSACTION_updateCredentials:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;
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
    const-string/jumbo v1, "android.accounts.IAccountAuthenticator"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/accounts/IAccountAuthenticator;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/accounts/IAccountAuthenticator;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v10

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@1d
    move-result-object v1

    #@1e
    .line 55
    .local v1, "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 57
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 59
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    .line 61
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 62
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Landroid/os/Bundle;

    #@38
    :goto_0
    move-object v0, p0

    #@39
    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    #@3c
    .line 68
    return v10

    #@3d
    .line 65
    :cond_0
    const/4 v5, 0x0

    #@3e
    .local v5, "_arg4":Landroid/os/Bundle;
    goto :goto_0

    #@3f
    .line 72
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@48
    move-result-object v0

    #@49
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@4c
    move-result-object v1

    #@4d
    .line 76
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_1

    #@53
    .line 77
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@55
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Landroid/accounts/Account;

    #@5b
    .line 83
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_2

    #@61
    .line 84
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66
    move-result-object v7

    #@67
    check-cast v7, Landroid/os/Bundle;

    #@69
    .line 89
    :goto_2
    invoke-virtual {p0, v1, v6, v7}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@6c
    .line 90
    return v10

    #@6d
    .line 80
    :cond_1
    const/4 v6, 0x0

    #@6e
    .local v6, "_arg1":Landroid/accounts/Account;
    goto :goto_1

    #@6f
    .line 87
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :cond_2
    const/4 v7, 0x0

    #@70
    .local v7, "_arg2":Landroid/os/Bundle;
    goto :goto_2

    #@71
    .line 94
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7a
    move-result-object v0

    #@7b
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@7e
    move-result-object v1

    #@7f
    .line 98
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_3

    #@85
    .line 99
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@87
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8a
    move-result-object v6

    #@8b
    check-cast v6, Landroid/accounts/Account;

    #@8d
    .line 105
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    .line 107
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_4

    #@97
    .line 108
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v9

    #@9d
    check-cast v9, Landroid/os/Bundle;

    #@9f
    .line 113
    :goto_4
    invoke-virtual {p0, v1, v6, v3, v9}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@a2
    .line 114
    return v10

    #@a3
    .line 102
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    #@a4
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_3

    #@a5
    .line 111
    .end local v6    # "_arg1":Landroid/accounts/Account;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    #@a6
    .local v9, "_arg3":Landroid/os/Bundle;
    goto :goto_4

    #@a7
    .line 118
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b0
    move-result-object v0

    #@b1
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@b4
    move-result-object v1

    #@b5
    .line 122
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    .line 123
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    #@bc
    .line 124
    return v10

    #@bd
    .line 128
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c6
    move-result-object v0

    #@c7
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@ca
    move-result-object v1

    #@cb
    .line 132
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_5

    #@d1
    .line 133
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d3
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v6

    #@d7
    check-cast v6, Landroid/accounts/Account;

    #@d9
    .line 139
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dc
    move-result-object v3

    #@dd
    .line 141
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v0

    #@e1
    if-eqz v0, :cond_6

    #@e3
    .line 142
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e8
    move-result-object v9

    #@e9
    check-cast v9, Landroid/os/Bundle;

    #@eb
    .line 147
    :goto_6
    invoke-virtual {p0, v1, v6, v3, v9}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@ee
    .line 148
    return v10

    #@ef
    .line 136
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    #@f0
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_5

    #@f1
    .line 145
    .end local v6    # "_arg1":Landroid/accounts/Account;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    #@f2
    .restart local v9    # "_arg3":Landroid/os/Bundle;
    goto :goto_6

    #@f3
    .line 152
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@f6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fc
    move-result-object v0

    #@fd
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@100
    move-result-object v1

    #@101
    .line 156
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@104
    move-result-object v2

    #@105
    .line 157
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    #@108
    .line 158
    return v10

    #@109
    .line 162
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@10c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@112
    move-result-object v0

    #@113
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@116
    move-result-object v1

    #@117
    .line 166
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11a
    move-result v0

    #@11b
    if-eqz v0, :cond_7

    #@11d
    .line 167
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@122
    move-result-object v6

    #@123
    check-cast v6, Landroid/accounts/Account;

    #@125
    .line 173
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@128
    move-result-object v8

    #@129
    .line 174
    .local v8, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v6, v8}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    #@12c
    .line 175
    return v10

    #@12d
    .line 170
    .end local v8    # "_arg2":[Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    #@12e
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_7

    #@12f
    .line 179
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_8
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@138
    move-result-object v0

    #@139
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@13c
    move-result-object v1

    #@13d
    .line 183
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v0

    #@141
    if-eqz v0, :cond_8

    #@143
    .line 184
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@145
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v6

    #@149
    check-cast v6, Landroid/accounts/Account;

    #@14b
    .line 189
    :goto_8
    invoke-virtual {p0, v1, v6}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@14e
    .line 190
    return v10

    #@14f
    .line 187
    :cond_8
    const/4 v6, 0x0

    #@150
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    #@151
    .line 194
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@157
    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15a
    move-result-object v0

    #@15b
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@15e
    move-result-object v1

    #@15f
    .line 198
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v0

    #@163
    if-eqz v0, :cond_9

    #@165
    .line 199
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@167
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16a
    move-result-object v6

    #@16b
    check-cast v6, Landroid/accounts/Account;

    #@16d
    .line 204
    :goto_9
    invoke-virtual {p0, v1, v6}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    #@170
    .line 205
    return v10

    #@171
    .line 202
    :cond_9
    const/4 v6, 0x0

    #@172
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_9

    #@173
    .line 209
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :sswitch_a
    const-string/jumbo v0, "android.accounts.IAccountAuthenticator"

    #@176
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17c
    move-result-object v0

    #@17d
    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    #@180
    move-result-object v1

    #@181
    .line 213
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v0

    #@185
    if-eqz v0, :cond_a

    #@187
    .line 214
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@189
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18c
    move-result-object v6

    #@18d
    check-cast v6, Landroid/accounts/Account;

    #@18f
    .line 220
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v0

    #@193
    if-eqz v0, :cond_b

    #@195
    .line 221
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@197
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19a
    move-result-object v7

    #@19b
    check-cast v7, Landroid/os/Bundle;

    #@19d
    .line 226
    :goto_b
    invoke-virtual {p0, v1, v6, v7}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@1a0
    .line 227
    return v10

    #@1a1
    .line 217
    :cond_a
    const/4 v6, 0x0

    #@1a2
    .restart local v6    # "_arg1":Landroid/accounts/Account;
    goto :goto_a

    #@1a3
    .line 224
    .end local v6    # "_arg1":Landroid/accounts/Account;
    :cond_b
    const/4 v7, 0x0

    #@1a4
    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    #@1a5
    .line 42
    nop

    #@1a6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
