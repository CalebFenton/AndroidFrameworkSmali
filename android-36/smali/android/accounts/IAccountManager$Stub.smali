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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final greylist-max-o TRANSACTION_accountAuthenticated:I = 0x1b

.field static final greylist-max-o TRANSACTION_addAccount:I = 0x16

.field static final greylist-max-o TRANSACTION_addAccountAsUser:I = 0x17

.field static final greylist-max-o TRANSACTION_addAccountExplicitly:I = 0xa

.field static final greylist-max-o TRANSACTION_addAccountExplicitlyWithVisibility:I = 0x26

.field static final greylist-max-o TRANSACTION_addSharedAccountsFromParentUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_clearPassword:I = 0x12

.field static final greylist-max-o TRANSACTION_confirmCredentialsAsUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_copyAccountToUser:I = 0xd

.field static final greylist-max-o TRANSACTION_createRequestAccountAccessIntentSenderAsUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_editProperties:I = 0x19

.field static final greylist-max-o TRANSACTION_finishSessionAsUser:I = 0x22

.field static final greylist-max-o TRANSACTION_getAccountByTypeAndFeatures:I = 0x8

.field static final greylist-max-o TRANSACTION_getAccountVisibility:I = 0x28

.field static final greylist-max-o TRANSACTION_getAccountsAndVisibilityForPackage:I = 0x29

.field static final greylist-max-o TRANSACTION_getAccountsAsUser:I = 0x6

.field static final greylist-max-o TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final greylist-max-o TRANSACTION_getAccountsByTypeForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_getAccountsForPackage:I = 0x4

.field static final greylist-max-o TRANSACTION_getAuthToken:I = 0x15

.field static final greylist-max-o TRANSACTION_getAuthTokenLabel:I = 0x1c

.field static final greylist-max-o TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final greylist-max-o TRANSACTION_getPackagesAndVisibilityForAccount:I = 0x25

.field static final greylist-max-o TRANSACTION_getPassword:I = 0x1

.field static final greylist-max-o TRANSACTION_getPreviousName:I = 0x1f

.field static final greylist-max-o TRANSACTION_getUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_hasAccountAccess:I = 0x2c

.field static final greylist-max-o TRANSACTION_hasFeatures:I = 0x7

.field static final greylist-max-o TRANSACTION_invalidateAuthToken:I = 0xe

.field static final greylist-max-o TRANSACTION_isCredentialsUpdateSuggested:I = 0x24

.field static final greylist-max-o TRANSACTION_onAccountAccessed:I = 0x2e

.field static final greylist-max-o TRANSACTION_peekAuthToken:I = 0xf

.field static final greylist-max-o TRANSACTION_registerAccountListener:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeAccountAsUser:I = 0xb

.field static final greylist-max-o TRANSACTION_removeAccountExplicitly:I = 0xc

.field static final greylist-max-o TRANSACTION_renameAccount:I = 0x1e

.field static final greylist-max-o TRANSACTION_setAccountVisibility:I = 0x27

.field static final greylist-max-o TRANSACTION_setAuthToken:I = 0x10

.field static final greylist-max-o TRANSACTION_setPassword:I = 0x11

.field static final greylist-max-o TRANSACTION_setUserData:I = 0x13

.field static final greylist-max-o TRANSACTION_someUserHasAccount:I = 0x23

.field static final greylist-max-o TRANSACTION_startAddAccountSession:I = 0x20

.field static final greylist-max-o TRANSACTION_startUpdateCredentialsSession:I = 0x21

.field static final greylist-max-o TRANSACTION_unregisterAccountListener:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateAppPermission:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCredentials:I = 0x18


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 201
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 202
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 210
    if-nez p0, :cond_4

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_4
    const-string v0, "android.accounts.IAccountManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 214
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_14

    .line 215
    move-object v1, v0

    check-cast v1, Landroid/accounts/IAccountManager;

    return-object v1

    .line 217
    :cond_14
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 226
    packed-switch p0, :pswitch_data_a4

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 410
    :pswitch_5
    const-string/jumbo v0, "onAccountAccessed"

    return-object v0

    .line 406
    :pswitch_9
    const-string v0, "createRequestAccountAccessIntentSenderAsUser"

    return-object v0

    .line 402
    :pswitch_c
    const-string/jumbo v0, "hasAccountAccess"

    return-object v0

    .line 398
    :pswitch_10
    const-string/jumbo v0, "unregisterAccountListener"

    return-object v0

    .line 394
    :pswitch_14
    const-string/jumbo v0, "registerAccountListener"

    return-object v0

    .line 390
    :pswitch_18
    const-string v0, "getAccountsAndVisibilityForPackage"

    return-object v0

    .line 386
    :pswitch_1b
    const-string v0, "getAccountVisibility"

    return-object v0

    .line 382
    :pswitch_1e
    const-string/jumbo v0, "setAccountVisibility"

    return-object v0

    .line 378
    :pswitch_22
    const-string v0, "addAccountExplicitlyWithVisibility"

    return-object v0

    .line 374
    :pswitch_25
    const-string v0, "getPackagesAndVisibilityForAccount"

    return-object v0

    .line 370
    :pswitch_28
    const-string/jumbo v0, "isCredentialsUpdateSuggested"

    return-object v0

    .line 366
    :pswitch_2c
    const-string/jumbo v0, "someUserHasAccount"

    return-object v0

    .line 362
    :pswitch_30
    const-string v0, "finishSessionAsUser"

    return-object v0

    .line 358
    :pswitch_33
    const-string/jumbo v0, "startUpdateCredentialsSession"

    return-object v0

    .line 354
    :pswitch_37
    const-string/jumbo v0, "startAddAccountSession"

    return-object v0

    .line 350
    :pswitch_3b
    const-string v0, "getPreviousName"

    return-object v0

    .line 346
    :pswitch_3e
    const-string/jumbo v0, "renameAccount"

    return-object v0

    .line 342
    :pswitch_42
    const-string v0, "addSharedAccountsFromParentUser"

    return-object v0

    .line 338
    :pswitch_45
    const-string v0, "getAuthTokenLabel"

    return-object v0

    .line 334
    :pswitch_48
    const-string v0, "accountAuthenticated"

    return-object v0

    .line 330
    :pswitch_4b
    const-string v0, "confirmCredentialsAsUser"

    return-object v0

    .line 326
    :pswitch_4e
    const-string v0, "editProperties"

    return-object v0

    .line 322
    :pswitch_51
    const-string/jumbo v0, "updateCredentials"

    return-object v0

    .line 318
    :pswitch_55
    const-string v0, "addAccountAsUser"

    return-object v0

    .line 314
    :pswitch_58
    const-string v0, "addAccount"

    return-object v0

    .line 310
    :pswitch_5b
    const-string v0, "getAuthToken"

    return-object v0

    .line 306
    :pswitch_5e
    const-string/jumbo v0, "updateAppPermission"

    return-object v0

    .line 302
    :pswitch_62
    const-string/jumbo v0, "setUserData"

    return-object v0

    .line 298
    :pswitch_66
    const-string v0, "clearPassword"

    return-object v0

    .line 294
    :pswitch_69
    const-string/jumbo v0, "setPassword"

    return-object v0

    .line 290
    :pswitch_6d
    const-string/jumbo v0, "setAuthToken"

    return-object v0

    .line 286
    :pswitch_71
    const-string/jumbo v0, "peekAuthToken"

    return-object v0

    .line 282
    :pswitch_75
    const-string/jumbo v0, "invalidateAuthToken"

    return-object v0

    .line 278
    :pswitch_79
    const-string v0, "copyAccountToUser"

    return-object v0

    .line 274
    :pswitch_7c
    const-string/jumbo v0, "removeAccountExplicitly"

    return-object v0

    .line 270
    :pswitch_80
    const-string/jumbo v0, "removeAccountAsUser"

    return-object v0

    .line 266
    :pswitch_84
    const-string v0, "addAccountExplicitly"

    return-object v0

    .line 262
    :pswitch_87
    const-string v0, "getAccountsByFeatures"

    return-object v0

    .line 258
    :pswitch_8a
    const-string v0, "getAccountByTypeAndFeatures"

    return-object v0

    .line 254
    :pswitch_8d
    const-string/jumbo v0, "hasFeatures"

    return-object v0

    .line 250
    :pswitch_91
    const-string v0, "getAccountsAsUser"

    return-object v0

    .line 246
    :pswitch_94
    const-string v0, "getAccountsByTypeForPackage"

    return-object v0

    .line 242
    :pswitch_97
    const-string v0, "getAccountsForPackage"

    return-object v0

    .line 238
    :pswitch_9a
    const-string v0, "getAuthenticatorTypes"

    return-object v0

    .line 234
    :pswitch_9d
    const-string/jumbo v0, "getUserData"

    return-object v0

    .line 230
    :pswitch_a1
    const-string v0, "getPassword"

    return-object v0

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 221
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1997
    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 421
    invoke-static {p1}, Landroid/accounts/IAccountManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 425
    move-object v8, p3

    const-string v9, "android.accounts.IAccountManager"

    .line 426
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 427
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 430
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    return v10

    .line 433
    :cond_17
    packed-switch p1, :pswitch_data_59e

    .line 1065
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1057
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->onAccountAccessed(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_59d

    .line 1043
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2e
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 1045
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1048
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v4

    .line 1050
    .local v4, "_result":Landroid/content/IntentSender;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1052
    goto/16 :goto_59d

    .line 1029
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/IntentSender;
    :pswitch_51
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 1031
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1033
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1034
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    .line 1036
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1038
    goto/16 :goto_59d

    .line 1018
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_59d

    .line 1007
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1009
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_59d

    .line 995
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 998
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1000
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1002
    goto/16 :goto_59d

    .line 983
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_b1
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 985
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 986
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    .line 988
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    goto/16 :goto_59d

    .line 969
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_cc
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 971
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 973
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 974
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 976
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 978
    goto/16 :goto_59d

    .line 950
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_eb
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 952
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 954
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 956
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 957
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 959
    .local v4, "_arg3":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 960
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v7

    .line 962
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 964
    goto/16 :goto_59d

    .line 940
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/util/Map;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "_result":Z
    :pswitch_11f
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 941
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v2

    .line 943
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 945
    goto/16 :goto_59d

    .line 927
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 929
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 931
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_59d

    .line 917
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_155
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 918
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v2

    .line 920
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    goto/16 :goto_59d

    .line 900
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Z
    :pswitch_16c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 902
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 904
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 906
    .local v3, "_arg2":Z
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 908
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 909
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_59d

    .line 883
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":I
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 885
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .line 887
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 891
    .local v4, "_arg3":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 892
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_59d

    .line 864
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 866
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 870
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 874
    .local v5, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 875
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_59d

    .line 854
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :pswitch_1f3
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 855
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    goto/16 :goto_59d

    .line 841
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 843
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 845
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 846
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_59d

    .line 828
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 832
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 833
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_59d

    .line 815
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 817
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_59d

    .line 805
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_25b
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 806
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v2

    .line 808
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 810
    goto/16 :goto_59d

    .line 788
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Z
    :pswitch_272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 790
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 792
    .local v2, "_arg1":Landroid/accounts/Account;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 794
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 796
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 797
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto/16 :goto_59d

    .line 775
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :pswitch_29e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 777
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 780
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_59d

    .line 758
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 760
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 762
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 766
    .restart local v4    # "_arg3":Z
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 767
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_59d

    .line 737
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_2e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 739
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 743
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 747
    .local v5, "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 749
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 750
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_59d

    .line 718
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    :pswitch_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 720
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 722
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 724
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 726
    .restart local v4    # "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 728
    .restart local v5    # "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 729
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_59d

    .line 699
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :pswitch_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 701
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/accounts/Account;

    .line 703
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 705
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 707
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 709
    .restart local v5    # "_arg4":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 710
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_59d

    .line 684
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :pswitch_375
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 686
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 691
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_59d

    .line 671
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_394
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 673
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 675
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_59d

    .line 662
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_3af
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 663
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_59d

    .line 651
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :pswitch_3c2
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 653
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 654
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_59d

    .line 638
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3d9
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 640
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 643
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto/16 :goto_59d

    .line 626
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_3f4
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 628
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 629
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    goto/16 :goto_59d

    .line 615
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_59d

    .line 600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 602
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 604
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 607
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    goto/16 :goto_59d

    .line 590
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_445
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 591
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v2

    .line 593
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_59d

    .line 575
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Z
    :pswitch_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 577
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 579
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 581
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 582
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_59d

    .line 559
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_47f
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 561
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 565
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 568
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    goto/16 :goto_59d

    .line 544
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_4a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 546
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 551
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_59d

    .line 529
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_4c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 531
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 535
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_59d

    .line 512
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_4e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 514
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 516
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 518
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 520
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_59d

    .line 498
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_50c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 505
    .local v4, "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 507
    goto/16 :goto_59d

    .line 484
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/accounts/Account;
    :pswitch_527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 491
    .restart local v4    # "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 493
    goto :goto_59d

    .line 470
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/accounts/Account;
    :pswitch_541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 475
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 477
    .restart local v4    # "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 479
    goto :goto_59d

    .line 460
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/accounts/Account;
    :pswitch_55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 463
    .local v2, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 465
    goto :goto_59d

    .line 448
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :pswitch_56d
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 450
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    goto :goto_59d

    .line 438
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_587
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 439
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    nop

    .line 1068
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_result":Ljava/lang/String;
    :goto_59d
    return v10

    :pswitch_data_59e
    .packed-switch 0x1
        :pswitch_587
        :pswitch_56d
        :pswitch_55b
        :pswitch_541
        :pswitch_527
        :pswitch_50c
        :pswitch_4e4
        :pswitch_4c5
        :pswitch_4a6
        :pswitch_47f
        :pswitch_45c
        :pswitch_445
        :pswitch_422
        :pswitch_40f
        :pswitch_3f4
        :pswitch_3d9
        :pswitch_3c2
        :pswitch_3af
        :pswitch_394
        :pswitch_375
        :pswitch_343
        :pswitch_316
        :pswitch_2e5
        :pswitch_2b9
        :pswitch_29e
        :pswitch_272
        :pswitch_25b
        :pswitch_240
        :pswitch_229
        :pswitch_20a
        :pswitch_1f3
        :pswitch_1c6
        :pswitch_198
        :pswitch_16c
        :pswitch_155
        :pswitch_136
        :pswitch_11f
        :pswitch_eb
        :pswitch_cc
        :pswitch_b1
        :pswitch_9a
        :pswitch_87
        :pswitch_74
        :pswitch_51
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
