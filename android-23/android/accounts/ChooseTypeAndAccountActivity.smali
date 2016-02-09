.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final KEY_INSTANCE_STATE_ACCOUNT_LIST:Ljava/lang/String; = "accountList"

.field private static final KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field public static final REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final REQUEST_NULL:I = 0x0

.field private static final SELECTED_ITEM_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mDescriptionOverride:Ljava/lang/String;

.field private mDisallowAddAccounts:Z

.field private mDontShowPicker:Z

.field private mExistingAccounts:[Landroid/os/Parcelable;

.field private mOkButton:Landroid/widget/Button;

.field private mPendingRequest:I

.field private mSelectedAccountName:Ljava/lang/String;

.field private mSelectedAddNewAccount:Z

.field private mSelectedItemIndex:I

.field private mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@2
    return p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@5
    .line 119
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    #@7
    .line 120
    iput-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    #@9
    .line 124
    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@b
    .line 125
    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@d
    .line 49
    return-void
.end method

.method private getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 482
    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    #@2
    .line 483
    iget v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@4
    .line 482
    invoke-virtual {p1, v3, v4}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@7
    move-result-object v1

    #@8
    .line 484
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/ArrayList;

    #@a
    array-length v3, v1

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 485
    .local v2, "accountsToPopulate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v3, 0x0

    #@f
    array-length v4, v1

    #@10
    :goto_0
    if-ge v3, v4, :cond_3

    #@12
    aget-object v0, v1, v3

    #@14
    .line 486
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    #@16
    if-eqz v5, :cond_0

    #@18
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    #@1a
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 489
    :cond_0
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 490
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    #@26
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@28
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    .line 493
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 485
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 495
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    return-object v2
.end method

.method private getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 527
    const/4 v2, 0x0

    #@1
    .line 529
    .local v2, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    const-string/jumbo v4, "allowableAccounts"

    #@4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    .line 530
    .local v3, "validAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    #@a
    .line 531
    new-instance v2, Ljava/util/HashSet;

    #@c
    .end local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v4

    #@10
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    #@13
    .line 532
    .local v2, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "parcelable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/os/Parcelable;

    #@23
    .line 533
    .local v0, "parcelable":Landroid/os/Parcelable;
    check-cast v0, Landroid/accounts/Account;

    #@25
    .end local v0    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 536
    .end local v1    # "parcelable$iterator":Ljava/util/Iterator;
    .end local v2    # "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_0
    return-object v2
.end method

.method private getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "selectedAccountName"    # Ljava/lang/String;
    .param p3, "selectedAddNewAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    #@0
    .prologue
    .line 449
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz p3, :cond_0

    #@2
    .line 450
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 453
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 454
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/accounts/Account;

    #@14
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 455
    return v0

    #@1d
    .line 453
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 459
    :cond_2
    const/4 v1, -0x1

    #@21
    return v1
.end method

.method private getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 465
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v3

    #@4
    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x0

    #@9
    :goto_0
    add-int/2addr v2, v3

    #@a
    new-array v1, v2, [Ljava/lang/String;

    #@c
    .line 466
    .local v1, "listItems":[Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    if-ge v0, v2, :cond_1

    #@13
    .line 467
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/accounts/Account;

    #@19
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1b
    aput-object v2, v1, v0

    #@1d
    .line 466
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 465
    .end local v0    # "i":I
    .end local v1    # "listItems":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 469
    .restart local v0    # "i":I
    .restart local v1    # "listItems":[Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    #@24
    if-nez v2, :cond_2

    #@26
    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    #@2d
    move-result-object v3

    #@2e
    .line 471
    const v4, 0x1040459

    #@31
    .line 470
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    aput-object v3, v1, v2

    #@37
    .line 473
    :cond_2
    return-object v1
.end method

.method private getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 505
    const/4 v3, 0x0

    #@1
    .line 507
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v5, "allowableAccountTypes"

    #@4
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 508
    .local v0, "allowedAccountTypes":[Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    #@f
    move-result-object v2

    #@10
    .line 509
    .local v2, "descs":[Landroid/accounts/AuthenticatorDescription;
    new-instance v4, Ljava/util/HashSet;

    #@12
    array-length v5, v2

    #@13
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    #@16
    .line 510
    .local v4, "supportedAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@17
    array-length v6, v2

    #@18
    :goto_0
    if-ge v5, v6, :cond_0

    #@1a
    aget-object v1, v2, v5

    #@1c
    .line 511
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v7, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@1e
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@21
    .line 510
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_0

    #@24
    .line 513
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    if-eqz v0, :cond_1

    #@26
    .line 514
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    #@29
    move-result-object v3

    #@2a
    .line 515
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@2d
    .line 519
    :goto_1
    return-object v3

    #@2e
    .line 517
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    move-object v3, v4

    #@2f
    .local v3, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private onAccountSelected(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 407
    const-string/jumbo v0, "AccountChooser"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "selected account "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 408
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@1c
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1e
    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 406
    return-void
.end method

.method private overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .locals 2
    .param p1, "descriptionOverride"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    const v1, 0x1020304

    #@3
    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/TextView;

    #@9
    .line 545
    .local v0, "descriptionView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 546
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@12
    .line 543
    :goto_0
    return-void

    #@13
    .line 548
    :cond_0
    const/16 v1, 0x8

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@18
    goto :goto_0
.end method

.method private final populateUIAccountList([Ljava/lang/String;)V
    .locals 4
    .param p1, "listItems"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 557
    const v1, 0x102000a

    #@4
    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/widget/ListView;

    #@a
    .line 558
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    #@c
    .line 559
    const v2, 0x109000f

    #@f
    .line 558
    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@15
    .line 560
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@18
    .line 561
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@1c
    .line 563
    new-instance v1, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    #@1e
    invoke-direct {v1, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    #@21
    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@24
    .line 570
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@26
    const/4 v2, -0x1

    #@27
    if-eq v1, v2, :cond_0

    #@29
    .line 571
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@2b
    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    #@2e
    .line 572
    const-string/jumbo v1, "AccountChooser"

    #@31
    const/4 v2, 0x2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_0

    #@38
    .line 573
    const-string/jumbo v1, "AccountChooser"

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "List item "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, " should be selected"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 556
    :cond_0
    return-void
.end method

.method private setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 402
    const v0, 0x103023c

    #@3
    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    #@6
    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@9
    .line 401
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 413
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "authAccount"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 414
    const-string/jumbo v1, "accountType"

    #@e
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 415
    new-instance v1, Landroid/content/Intent;

    #@13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, -0x1

    #@1b
    invoke-virtual {p0, v2, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    #@1e
    .line 416
    const-string/jumbo v1, "AccountChooser"

    #@21
    const/4 v2, 0x2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 417
    const-string/jumbo v1, "AccountChooser"

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 418
    const-string/jumbo v3, ", "

    #@3e
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    #@50
    .line 411
    return-void
.end method

.method private startChooseAccountTypeActivity()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 424
    const-string/jumbo v1, "AccountChooser"

    #@4
    const/4 v2, 0x2

    #@5
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 425
    const-string/jumbo v1, "AccountChooser"

    #@e
    const-string/jumbo v2, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 427
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@16
    const-class v1, Landroid/accounts/ChooseAccountTypeActivity;

    #@18
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1b
    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@20
    .line 429
    const-string/jumbo v1, "allowableAccountTypes"

    #@23
    .line 430
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "allowableAccountTypes"

    #@2a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 431
    const-string/jumbo v1, "addAccountOptions"

    #@34
    .line 432
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, "addAccountOptions"

    #@3b
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@3e
    move-result-object v2

    #@3f
    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@42
    .line 433
    const-string/jumbo v1, "addAccountRequiredFeatures"

    #@45
    .line 434
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "addAccountRequiredFeatures"

    #@4c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@53
    .line 435
    const-string/jumbo v1, "authTokenType"

    #@56
    .line 436
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "authTokenType"

    #@5d
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@64
    .line 437
    invoke-virtual {p0, v0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    #@67
    .line 438
    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@69
    .line 423
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    .line 283
    const-string/jumbo v7, "AccountChooser"

    #@5
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_1

    #@b
    .line 284
    if-eqz p3, :cond_0

    #@d
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@10
    move-result-object v7

    #@11
    if-eqz v7, :cond_0

    #@13
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@1a
    .line 285
    :cond_0
    if-eqz p3, :cond_3

    #@1c
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@1f
    move-result-object v5

    #@20
    .line 286
    :goto_0
    const-string/jumbo v7, "AccountChooser"

    #@23
    new-instance v9, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v10, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    #@2b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    .line 287
    const-string/jumbo v10, ", resCode="

    #@36
    .line 286
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    .line 287
    const-string/jumbo v10, ", extras="

    #@41
    .line 286
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    .line 287
    const-string/jumbo v10, ")"

    #@4c
    .line 286
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 291
    :cond_1
    iput v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@59
    .line 293
    if-nez p2, :cond_4

    #@5b
    .line 296
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_2

    #@63
    .line 297
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    #@66
    .line 298
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    #@69
    .line 300
    :cond_2
    return-void

    #@6a
    .line 285
    :cond_3
    const/4 v5, 0x0

    #@6b
    .local v5, "extras":Landroid/os/Bundle;
    goto :goto_0

    #@6c
    .line 303
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_4
    const/4 v7, -0x1

    #@6d
    if-ne p2, v7, :cond_7

    #@6f
    .line 304
    const/4 v7, 0x1

    #@70
    if-ne p1, v7, :cond_9

    #@72
    .line 305
    if-eqz p3, :cond_5

    #@74
    .line 306
    const-string/jumbo v7, "accountType"

    #@77
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    .line 307
    .local v3, "accountType":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@7d
    .line 308
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    #@80
    .line 309
    return-void

    #@81
    .line 312
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "AccountChooser"

    #@84
    const-string/jumbo v9, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    #@87
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 344
    :cond_6
    const-string/jumbo v7, "AccountChooser"

    #@8d
    const-string/jumbo v9, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    #@90
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@93
    .line 347
    :cond_7
    const-string/jumbo v7, "AccountChooser"

    #@96
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@99
    move-result v7

    #@9a
    if-eqz v7, :cond_8

    #@9c
    .line 348
    const-string/jumbo v7, "AccountChooser"

    #@9f
    const-string/jumbo v9, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    #@a2
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 350
    :cond_8
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    #@a8
    .line 351
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    #@ab
    .line 282
    return-void

    #@ac
    .line 314
    :cond_9
    if-ne p1, v11, :cond_6

    #@ae
    .line 315
    const/4 v1, 0x0

    #@af
    .line 316
    .local v1, "accountName":Ljava/lang/String;
    const/4 v3, 0x0

    #@b0
    .line 318
    .local v3, "accountType":Ljava/lang/String;
    if-eqz p3, :cond_a

    #@b2
    .line 319
    const-string/jumbo v7, "authAccount"

    #@b5
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@b8
    move-result-object v1

    #@b9
    .line 320
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v7, "accountType"

    #@bc
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    .line 323
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_b

    #@c2
    if-nez v3, :cond_d

    #@c4
    .line 324
    :cond_b
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@c7
    move-result-object v7

    #@c8
    .line 325
    iget-object v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    #@ca
    iget v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@cc
    .line 324
    invoke-virtual {v7, v9, v10}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@cf
    move-result-object v4

    #@d0
    .line 326
    .local v4, "currentAccounts":[Landroid/accounts/Account;
    new-instance v6, Ljava/util/HashSet;

    #@d2
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@d5
    .line 327
    .local v6, "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@d7
    array-length v10, v9

    #@d8
    move v7, v8

    #@d9
    :goto_1
    if-ge v7, v10, :cond_c

    #@db
    aget-object v2, v9, v7

    #@dd
    .line 328
    .local v2, "accountParcel":Landroid/os/Parcelable;
    check-cast v2, Landroid/accounts/Account;

    #@df
    .end local v2    # "accountParcel":Landroid/os/Parcelable;
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e2
    .line 327
    add-int/lit8 v7, v7, 0x1

    #@e4
    goto :goto_1

    #@e5
    .line 330
    :cond_c
    array-length v9, v4

    #@e6
    move v7, v8

    #@e7
    :goto_2
    if-ge v7, v9, :cond_d

    #@e9
    aget-object v0, v4, v7

    #@eb
    .line 331
    .local v0, "account":Landroid/accounts/Account;
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@ee
    move-result v10

    #@ef
    if-nez v10, :cond_f

    #@f1
    .line 332
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@f3
    .line 333
    .restart local v1    # "accountName":Ljava/lang/String;
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@f5
    .line 339
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v4    # "currentAccounts":[Landroid/accounts/Account;
    .end local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_d
    if-nez v1, :cond_e

    #@f7
    if-eqz v3, :cond_6

    #@f9
    .line 340
    :cond_e
    invoke-direct {p0, v1, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    #@fc
    .line 341
    return-void

    #@fd
    .line 330
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v4    # "currentAccounts":[Landroid/accounts/Account;
    .restart local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_f
    add-int/lit8 v7, v7, 0x1

    #@ff
    goto :goto_2
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    #@3
    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    .line 135
    const-string/jumbo v7, "AccountChooser"

    #@7
    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 136
    const-string/jumbo v7, "AccountChooser"

    #@10
    new-instance v10, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v11, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    #@18
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v10

    #@1c
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v10

    #@20
    .line 137
    const-string/jumbo v11, ")"

    #@23
    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v10

    #@27
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v10

    #@2b
    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 140
    :cond_0
    const/4 v3, 0x0

    #@2f
    .line 143
    .local v3, "message":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getActivityToken()Landroid/os/IBinder;

    #@32
    move-result-object v0

    #@33
    .line 144
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@36
    move-result-object v7

    #@37
    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@3a
    move-result v7

    #@3b
    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@3d
    .line 145
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@40
    move-result-object v7

    #@41
    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    #@47
    .line 147
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@49
    if-eqz v7, :cond_1

    #@4b
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    #@4d
    if-eqz v7, :cond_1

    #@4f
    .line 148
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@52
    move-result-object v7

    #@53
    .line 149
    new-instance v10, Landroid/os/UserHandle;

    #@55
    iget v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@57
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    #@5a
    move-result v11

    #@5b
    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    #@5e
    .line 148
    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    #@61
    move-result-object v5

    #@62
    .line 151
    .local v5, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v7, "no_modify_accounts"

    #@65
    const/4 v10, 0x0

    #@66
    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@69
    move-result v7

    #@6a
    .line 150
    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 159
    .end local v0    # "activityToken":Landroid/os/IBinder;
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@6f
    move-result-object v1

    #@70
    .line 161
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_5

    #@72
    .line 162
    const-string/jumbo v7, "pendingRequest"

    #@75
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@78
    move-result v7

    #@79
    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@7b
    .line 164
    const-string/jumbo v7, "existingAccounts"

    #@7e
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@81
    move-result-object v7

    #@82
    .line 163
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@84
    .line 168
    const-string/jumbo v7, "selectedAccountName"

    #@87
    .line 167
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    #@8d
    .line 171
    const-string/jumbo v7, "selectedAddAccount"

    #@90
    .line 170
    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@93
    move-result v7

    #@94
    iput-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    #@96
    .line 172
    const-string/jumbo v7, "accountList"

    #@99
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@9c
    move-result-object v7

    #@9d
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@9f
    .line 184
    :cond_2
    :goto_1
    const-string/jumbo v7, "AccountChooser"

    #@a2
    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a5
    move-result v7

    #@a6
    if-eqz v7, :cond_3

    #@a8
    .line 185
    const-string/jumbo v7, "AccountChooser"

    #@ab
    new-instance v10, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v11, "selected account name is "

    #@b3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v10

    #@b7
    iget-object v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    #@b9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v10

    #@c1
    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 189
    :cond_3
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    #@c7
    move-result-object v7

    #@c8
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    #@ca
    .line 190
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    #@cd
    move-result-object v7

    #@ce
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    #@d0
    .line 191
    const-string/jumbo v7, "descriptionTextOverride"

    #@d3
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v7

    #@d7
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    #@d9
    .line 193
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@dc
    move-result-object v7

    #@dd
    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/ArrayList;

    #@e0
    move-result-object v7

    #@e1
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@e3
    .line 194
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@e8
    move-result v7

    #@e9
    if-eqz v7, :cond_4

    #@eb
    .line 195
    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    #@ed
    .line 194
    if-eqz v7, :cond_4

    #@ef
    .line 196
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    #@f2
    .line 197
    const v7, 0x1090033

    #@f5
    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    #@f8
    .line 198
    iput-boolean v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    #@fa
    .line 201
    :cond_4
    iget-boolean v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    #@fc
    if-eqz v7, :cond_6

    #@fe
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@101
    .line 203
    return-void

    #@102
    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    #@103
    .line 155
    .local v4, "re":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getClass()Ljava/lang/Class;

    #@106
    move-result-object v7

    #@107
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10a
    move-result-object v7

    #@10b
    new-instance v10, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v11, "Unable to get caller identity \n"

    #@113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v10

    #@117
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v10

    #@11b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v10

    #@11f
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    goto/16 :goto_0

    #@124
    .line 174
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iput v9, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@126
    .line 175
    iput-object v12, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@128
    .line 178
    const-string/jumbo v7, "selectedAccount"

    #@12b
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12e
    move-result-object v6

    #@12f
    check-cast v6, Landroid/accounts/Account;

    #@131
    .line 179
    .local v6, "selectedAccount":Landroid/accounts/Account;
    if-eqz v6, :cond_2

    #@133
    .line 180
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@135
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    #@137
    goto/16 :goto_1

    #@139
    .line 210
    .end local v6    # "selectedAccount":Landroid/accounts/Account;
    :cond_6
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@13b
    if-nez v7, :cond_7

    #@13d
    .line 213
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@13f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@142
    move-result v7

    #@143
    if-eqz v7, :cond_7

    #@145
    .line 214
    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    #@148
    .line 215
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    #@14a
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@14d
    move-result v7

    #@14e
    if-ne v7, v8, :cond_8

    #@150
    .line 216
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    #@152
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@155
    move-result-object v7

    #@156
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@159
    move-result-object v7

    #@15a
    check-cast v7, Ljava/lang/String;

    #@15c
    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    #@15f
    .line 223
    :cond_7
    :goto_2
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@161
    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    #@164
    move-result-object v2

    #@165
    .line 225
    .local v2, "listItems":[Ljava/lang/String;
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@167
    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    #@169
    iget-boolean v11, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    #@16b
    .line 224
    invoke-direct {p0, v7, v10, v11}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    #@16e
    move-result v7

    #@16f
    iput v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@171
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@174
    .line 228
    const v7, 0x1090041

    #@177
    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    #@17a
    .line 229
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    #@17c
    invoke-direct {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    #@17f
    .line 230
    invoke-direct {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    #@182
    .line 233
    const v7, 0x102001a

    #@185
    invoke-virtual {p0, v7}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    #@188
    move-result-object v7

    #@189
    check-cast v7, Landroid/widget/Button;

    #@18b
    iput-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    #@18d
    .line 234
    iget-object v10, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    #@18f
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@191
    const/4 v11, -0x1

    #@192
    if-eq v7, v11, :cond_9

    #@194
    move v7, v8

    #@195
    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    #@198
    .line 134
    return-void

    #@199
    .line 218
    .end local v2    # "listItems":[Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    #@19c
    goto :goto_2

    #@19d
    .restart local v2    # "listItems":[Ljava/lang/String;
    :cond_9
    move v7, v9

    #@19e
    .line 234
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 239
    const-string/jumbo v0, "AccountChooser"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 240
    const-string/jumbo v0, "AccountChooser"

    #@d
    const-string/jumbo v1, "ChooseTypeAndAccountActivity.onDestroy()"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 242
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@16
    .line 238
    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 269
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@2
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 271
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    #@d
    .line 268
    :cond_0
    :goto_0
    return-void

    #@e
    .line 272
    :cond_1
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@10
    const/4 v1, -0x1

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 273
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@15
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/accounts/Account;

    #@1d
    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    #@20
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 248
    const-string/jumbo v0, "pendingRequest"

    #@6
    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 249
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@d
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 250
    const-string/jumbo v0, "existingAccounts"

    #@13
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@18
    .line 252
    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@1a
    const/4 v1, -0x1

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 253
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@1f
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v1

    #@25
    if-ne v0, v1, :cond_2

    #@27
    .line 254
    const-string/jumbo v0, "selectedAddAccount"

    #@2a
    const/4 v1, 0x1

    #@2b
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2e
    .line 261
    :cond_1
    :goto_0
    const-string/jumbo v0, "accountList"

    #@31
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@36
    .line 246
    return-void

    #@37
    .line 256
    :cond_2
    const-string/jumbo v0, "selectedAddAccount"

    #@3a
    const/4 v1, 0x0

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3e
    .line 257
    const-string/jumbo v1, "selectedAccountName"

    #@41
    .line 258
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/ArrayList;

    #@43
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    #@45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/accounts/Account;

    #@4b
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@4d
    .line 257
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 371
    .local p1, "accountManagerFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/os/Bundle;

    #@6
    .line 373
    .local v0, "accountManagerResult":Landroid/os/Bundle;
    const-string/jumbo v6, "intent"

    #@9
    .line 372
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@c
    move-result-object v5

    #@d
    check-cast v5, Landroid/content/Intent;

    #@f
    .line 374
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    #@11
    .line 375
    const/4 v6, 0x2

    #@12
    iput v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    #@14
    .line 376
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@17
    move-result-object v6

    #@18
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    #@1a
    .line 377
    iget v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    #@1c
    .line 376
    invoke-virtual {v6, v7, v8}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    #@1f
    move-result-object v6

    #@20
    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    #@22
    .line 378
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    #@25
    move-result v6

    #@26
    const v7, -0x10000001

    #@29
    and-int/2addr v6, v7

    #@2a
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@2d
    .line 379
    const/4 v6, 0x2

    #@2e
    invoke-virtual {p0, v5, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    #@31
    .line 380
    return-void

    #@32
    .line 382
    .end local v0    # "accountManagerResult":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    #@33
    .line 383
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    const/4 v6, 0x0

    #@34
    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    #@37
    .line 384
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    #@3a
    .line 385
    return-void

    #@3b
    .line 386
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v4

    #@3c
    .line 389
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    #@3e
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@41
    .line 390
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "errorMessage"

    #@44
    const-string/jumbo v7, "error communicating with server"

    #@47
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 391
    new-instance v6, Landroid/content/Intent;

    #@4c
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@4f
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@52
    move-result-object v6

    #@53
    const/4 v7, -0x1

    #@54
    invoke-virtual {p0, v7, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    #@57
    .line 392
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    #@5a
    .line 369
    return-void

    #@5b
    .line 387
    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    #@5c
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0
.end method

.method protected runAddAccountForAuthenticator(Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 355
    const-string/jumbo v0, "AccountChooser"

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 356
    const-string/jumbo v0, "AccountChooser"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "runAddAccountForAuthenticator: "

    #@16
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@28
    move-result-object v0

    #@29
    .line 359
    const-string/jumbo v1, "addAccountOptions"

    #@2c
    .line 358
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@2f
    move-result-object v4

    #@30
    .line 360
    .local v4, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@33
    move-result-object v0

    #@34
    .line 361
    const-string/jumbo v1, "addAccountRequiredFeatures"

    #@37
    .line 360
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 362
    .local v3, "requiredFeatures":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    #@3e
    move-result-object v0

    #@3f
    .line 363
    const-string/jumbo v1, "authTokenType"

    #@42
    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 364
    .local v2, "authTokenType":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@49
    move-result-object v0

    #@4a
    move-object v1, p1

    #@4b
    move-object v6, p0

    #@4c
    move-object v7, v5

    #@4d
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@50
    .line 354
    return-void
.end method
