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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticator"

.field static final greylist-max-o TRANSACTION_addAccount:I = 0x1

.field static final greylist-max-o TRANSACTION_addAccountFromCredentials:I = 0xa

.field static final greylist-max-o TRANSACTION_confirmCredentials:I = 0x2

.field static final greylist-max-o TRANSACTION_editProperties:I = 0x6

.field static final greylist-max-o TRANSACTION_finishSession:I = 0xd

.field static final greylist-max-o TRANSACTION_getAccountCredentialsForCloning:I = 0x9

.field static final greylist-max-o TRANSACTION_getAccountRemovalAllowed:I = 0x8

.field static final greylist-max-o TRANSACTION_getAuthToken:I = 0x3

.field static final greylist-max-o TRANSACTION_getAuthTokenLabel:I = 0x4

.field static final greylist-max-o TRANSACTION_hasFeatures:I = 0x7

.field static final greylist-max-o TRANSACTION_isCredentialsUpdateSuggested:I = 0xe

.field static final greylist-max-o TRANSACTION_startAddAccountSession:I = 0xb

.field static final greylist-max-o TRANSACTION_startUpdateCredentialsSession:I = 0xc

.field static final greylist-max-o TRANSACTION_updateCredentials:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    nop

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_d

    .line 104
    iput-object p1, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 105
    return-void

    .line 102
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/accounts/IAccountAuthenticator;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 134
    packed-switch p0, :pswitch_data_34

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 190
    :pswitch_5
    const-string/jumbo v0, "isCredentialsUpdateSuggested"

    return-object v0

    .line 186
    :pswitch_9
    const-string v0, "finishSession"

    return-object v0

    .line 182
    :pswitch_c
    const-string/jumbo v0, "startUpdateCredentialsSession"

    return-object v0

    .line 178
    :pswitch_10
    const-string/jumbo v0, "startAddAccountSession"

    return-object v0

    .line 174
    :pswitch_14
    const-string v0, "addAccountFromCredentials"

    return-object v0

    .line 170
    :pswitch_17
    const-string v0, "getAccountCredentialsForCloning"

    return-object v0

    .line 166
    :pswitch_1a
    const-string v0, "getAccountRemovalAllowed"

    return-object v0

    .line 162
    :pswitch_1d
    const-string/jumbo v0, "hasFeatures"

    return-object v0

    .line 158
    :pswitch_21
    const-string v0, "editProperties"

    return-object v0

    .line 154
    :pswitch_24
    const-string/jumbo v0, "updateCredentials"

    return-object v0

    .line 150
    :pswitch_28
    const-string v0, "getAuthTokenLabel"

    return-object v0

    .line 146
    :pswitch_2b
    const-string v0, "getAuthToken"

    return-object v0

    .line 142
    :pswitch_2e
    const-string v0, "confirmCredentials"

    return-object v0

    .line 138
    :pswitch_31
    const-string v0, "addAccount"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addAccountFromCredentials_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 689
    return-void
.end method

.method protected blacklist addAccount_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 644
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method protected blacklist confirmCredentials_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 649
    return-void
.end method

.method protected blacklist editProperties_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 669
    return-void
.end method

.method protected blacklist finishSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 704
    return-void
.end method

.method protected blacklist getAccountCredentialsForCloning_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 684
    return-void
.end method

.method protected blacklist getAccountRemovalAllowed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 679
    return-void
.end method

.method protected blacklist getAuthTokenLabel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 659
    return-void
.end method

.method protected blacklist getAuthToken_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 654
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 713
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 201
    invoke-static {p1}, Landroid/accounts/IAccountAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasFeatures_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 674
    return-void
.end method

.method protected blacklist isCredentialsUpdateSuggested_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 709
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const-string v6, "android.accounts.IAccountAuthenticator"

    .line 206
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 207
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 210
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return v7

    .line 213
    :cond_16
    packed-switch p1, :pswitch_data_1be

    .line 391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 380
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 382
    .local v1, "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 384
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 387
    goto/16 :goto_1bc

    .line 368
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 370
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 373
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 375
    goto/16 :goto_1bc

    .line 354
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 356
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 358
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 361
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->startUpdateCredentialsSession(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    goto/16 :goto_1bc

    .line 338
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 340
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "_arg3":[Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 347
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    goto/16 :goto_1bc

    .line 326
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 330
    .local v2, "_arg1":Landroid/accounts/Account;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 331
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 333
    goto/16 :goto_1bc

    .line 316
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 318
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 319
    .restart local v2    # "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 321
    goto/16 :goto_1bc

    .line 306
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 308
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 309
    .restart local v2    # "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 311
    goto/16 :goto_1bc

    .line 294
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 296
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 298
    .restart local v2    # "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 301
    goto/16 :goto_1bc

    .line 284
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 286
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 289
    goto/16 :goto_1bc

    .line 270
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 272
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 274
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 277
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    goto/16 :goto_1bc

    .line 260
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 262
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 265
    goto :goto_1bc

    .line 246
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 248
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 250
    .local v2, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 253
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    goto :goto_1bc

    .line 234
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :pswitch_179
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 236
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 238
    .restart local v2    # "_arg1":Landroid/accounts/Account;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 239
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 241
    goto :goto_1bc

    .line 218
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "_arg3":[Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 227
    .restart local v5    # "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    nop

    .line 394
    .end local v1    # "_arg0":Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :goto_1bc
    return v7

    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_198
        :pswitch_179
        :pswitch_156
        :pswitch_143
        :pswitch_11f
        :pswitch_10b
        :pswitch_ef
        :pswitch_d7
        :pswitch_bf
        :pswitch_9f
        :pswitch_7a
        :pswitch_56
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist startAddAccountSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 694
    return-void
.end method

.method protected blacklist startUpdateCredentialsSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 699
    return-void
.end method

.method protected blacklist updateCredentials_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Landroid/accounts/IAccountAuthenticator$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/accounts/IAccountAuthenticator$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCOUNT_MANAGER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 664
    return-void
.end method
