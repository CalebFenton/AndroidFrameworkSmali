.class public final Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts$DefaultAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAccountAndState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState$DefaultAccountState;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_ACCOUNT_STATE_CLOUD:I = 0x3

.field public static final whitelist DEFAULT_ACCOUNT_STATE_LOCAL:I = 0x2

.field public static final whitelist DEFAULT_ACCOUNT_STATE_NOT_SET:I = 0x1

.field public static final whitelist DEFAULT_ACCOUNT_STATE_SIM:I = 0x4


# instance fields
.field private final blacklist mAccount:Landroid/accounts/Account;

.field private final blacklist mState:I


# direct methods
.method private constructor blacklist <init>(ILandroid/accounts/Account;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .line 3155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3156
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isValidDefaultAccountState(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3159
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v0

    if-eqz p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ne v0, v1, :cond_22

    .line 3164
    iput p1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    .line 3165
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, p2

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-object v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    .line 3166
    return-void

    .line 3160
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default account can be set to cloud or SIM if and only if the account is provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3157
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid default account state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILandroid/accounts/Account;Landroid/provider/ContactsContract-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public static blacklist isCloudOrSimAccount(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 3225
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private static blacklist isValidDefaultAccountState(I)Z
    .registers 3
    .param p0, "state"    # I

    .line 3230
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public static whitelist ofCloud(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3
    .param p0, "cloudAccount"    # Landroid/accounts/Account;

    .line 3180
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofLocal()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3206
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofNotSet()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3217
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofSim(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3
    .param p0, "simAccount"    # Landroid/accounts/Account;

    .line 3195
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3260
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3261
    return v0

    .line 3263
    :cond_4
    instance-of v1, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    .line 3267
    .local v1, "that":Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    iget v3, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    iget v4, v1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    iget-object v4, v1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 3264
    .end local v1    # "that":Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    :cond_1f
    return v2
.end method

.method public whitelist getAccount()Landroid/accounts/Account;
    .registers 2

    .line 3250
    iget-object v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 3241
    iget v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3255
    iget v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
