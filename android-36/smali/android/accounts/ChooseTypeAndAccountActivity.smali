.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final greylist-max-o EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final greylist-max-o EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final greylist-max-o EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final greylist-max-o EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final greylist-max-o KEY_INSTANCE_STATE_ACCOUNTS_LIST:Ljava/lang/String; = "accountsList"

.field private static final greylist-max-o KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final greylist-max-o KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final greylist-max-o KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final greylist-max-o KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field private static final greylist-max-o KEY_INSTANCE_STATE_VISIBILITY_LIST:Ljava/lang/String; = "visibilityList"

.field public static final greylist-max-o REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final greylist-max-o REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final greylist-max-o REQUEST_NULL:I = 0x0

.field private static final greylist-max-o SELECTED_ITEM_NONE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private greylist-max-o mAccounts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCallingUid:I

.field private greylist-max-o mDescriptionOverride:Ljava/lang/String;

.field private greylist-max-o mDisallowAddAccounts:Z

.field private greylist-max-o mDontShowPicker:Z

.field private greylist-max-o mExistingAccounts:[Landroid/os/Parcelable;

.field private greylist-max-o mOkButton:Landroid/widget/Button;

.field private greylist-max-o mPendingRequest:I

.field private greylist-max-o mPossiblyVisibleAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSelectedAccountName:Ljava/lang/String;

.field private greylist-max-o mSelectedAddNewAccount:Z

.field private greylist-max-o mSelectedItemIndex:I

.field private greylist-max-o mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$v2Y30ad3ahRsfpnVfcovLnFbaFQ(Landroid/accounts/ChooseTypeAndAccountActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->lambda$onCreate$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOkButton(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectedItemIndex(Landroid/accounts/ChooseTypeAndAccountActivity;I)V
    .registers 2

    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 130
    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 131
    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    return-void
.end method

.method private greylist-max-o getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;
    .registers 10
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 525
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 526
    .local v0, "accountsAndVisibilityForCaller":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 527
    .local v1, "allAccounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 528
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 529
    .local v2, "accountsToPopulate":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_48

    aget-object v5, v1, v4

    .line 530
    .local v5, "account":Landroid/accounts/Account;
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    if-eqz v6, :cond_27

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    .line 531
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 532
    goto :goto_45

    .line 534
    :cond_27
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    if-eqz v6, :cond_36

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    iget-object v7, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 535
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 536
    goto :goto_45

    .line 538
    :cond_36
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_45

    .line 539
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v5    # "account":Landroid/accounts/Account;
    :cond_45
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 542
    :cond_48
    return-object v2
.end method

.method private greylist-max-o getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    nop

    .line 576
    const-string v1, "allowableAccounts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 577
    .local v1, "validAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_2b

    .line 578
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v2

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 580
    .local v3, "parcelable":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroid/accounts/Account;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    goto :goto_18

    .line 583
    :cond_2b
    return-object v0
.end method

.method private greylist-max-o getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .registers 6
    .param p2, "selectedAccountName"    # Ljava/lang/String;
    .param p3, "selectedAddNewAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 491
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz p3, :cond_7

    .line 492
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 495
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 496
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 497
    return v0

    .line 495
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 501
    .end local v0    # "i":I
    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 507
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 508
    .local v0, "listItems":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 509
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 511
    .end local v1    # "i":I
    :cond_1f
    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-nez v1, :cond_34

    .line 512
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 515
    :cond_34
    return-object v0
.end method

.method private greylist-max-o getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 554
    const-string v1, "allowableAccountTypes"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "allowedAccountTypes":[Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 556
    .local v2, "descs":[Landroid/accounts/AuthenticatorDescription;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 557
    .local v3, "supportedAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_24

    aget-object v6, v2, v5

    .line 558
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v7, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v6    # "desc":Landroid/accounts/AuthenticatorDescription;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 560
    :cond_24
    if-eqz v1, :cond_2e

    .line 561
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 562
    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2f

    .line 564
    :cond_2e
    move-object v0, v3

    .line 566
    :goto_2f
    return-object v0
.end method

.method private synthetic blacklist lambda$onCreate$0()Ljava/lang/String;
    .registers 2

    .line 210
    const v0, 0x10403ab

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o onAccountSelected(Landroid/accounts/Account;)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selected account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private greylist-max-o overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .registers 4
    .param p1, "descriptionOverride"    # Ljava/lang/String;

    .line 591
    const v0, 0x10202d5

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 592
    .local v0, "descriptionView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 593
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 595
    :cond_13
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    :goto_18
    return-void
.end method

.method private final greylist-max-o populateUIAccountList([Ljava/lang/String;)V
    .registers 6
    .param p1, "listItems"    # [Ljava/lang/String;

    .line 604
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 605
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 608
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 609
    new-instance v2, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    invoke-direct {v2, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 617
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_55

    .line 618
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 619
    const/4 v1, 0x2

    const-string v2, "AccountChooser"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List item "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should be selected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_55
    return-void
.end method

.method private greylist-max-o setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 428
    const v0, 0x1030134

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    .line 429
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method private greylist-max-o setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 439
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .local v0, "account":Landroid/accounts/Account;
    nop

    .line 441
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 442
    .local v1, "oldVisibility":Ljava/lang/Integer;
    const/4 v2, 0x2

    if-eqz v1, :cond_27

    .line 443
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    .line 444
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 448
    :cond_27
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_38

    .line 450
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 451
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 452
    return-void

    .line 454
    :cond_38
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 455
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "authAccount"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v4, "accountType"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 458
    const-string v4, "AccountChooser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    invoke-virtual {v0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_76
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 463
    return-void
.end method

.method private greylist-max-o startChooseAccountTypeActivity()V
    .registers 4

    .line 466
    const/4 v0, 0x2

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 467
    const-string v0, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    nop

    .line 472
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "allowableAccountTypes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    nop

    .line 474
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountOptions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 475
    nop

    .line 476
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    nop

    .line 478
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authTokenType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 481
    return-void
.end method


# virtual methods
.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 307
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 308
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 309
    :cond_18
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 310
    .local v2, "extras":Landroid/os/Bundle;
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_46
    const/4 v2, 0x0

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 317
    if-nez p2, :cond_5a

    .line 320
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 321
    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 322
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 324
    :cond_59
    return-void

    .line 327
    :cond_5a
    const/4 v3, -0x1

    if-ne p2, v3, :cond_cb

    .line 328
    const-string v3, "accountType"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_74

    .line 329
    if-eqz p3, :cond_6e

    .line 330
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "accountType":Ljava/lang/String;
    if-eqz v3, :cond_6e

    .line 332
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    .line 333
    return-void

    .line 336
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_6e
    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 338
    :cond_74
    if-ne p1, v1, :cond_c6

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "accountName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 342
    .local v5, "accountType":Ljava/lang/String;
    if-eqz p3, :cond_84

    .line 343
    const-string v6, "authAccount"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    :cond_84
    if-eqz v4, :cond_88

    if-nez v5, :cond_be

    .line 349
    :cond_88
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v3, v6, v7}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v3

    .line 351
    .local v3, "currentAccounts":[Landroid/accounts/Account;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v6, "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    array-length v8, v7

    move v9, v2

    :goto_9d
    if-ge v9, v8, :cond_aa

    aget-object v10, v7, v9

    .line 353
    .local v10, "accountParcel":Landroid/os/Parcelable;
    move-object v11, v10

    check-cast v11, Landroid/accounts/Account;

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v10    # "accountParcel":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_9d

    .line 355
    :cond_aa
    array-length v7, v3

    move v8, v2

    :goto_ac
    if-ge v8, v7, :cond_be

    aget-object v9, v3, v8

    .line 357
    .local v9, "account":Landroid/accounts/Account;
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bb

    .line 358
    iget-object v4, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 359
    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 360
    goto :goto_be

    .line 355
    .end local v9    # "account":Landroid/accounts/Account;
    :cond_bb
    add-int/lit8 v8, v8, 0x1

    goto :goto_ac

    .line 365
    .end local v3    # "currentAccounts":[Landroid/accounts/Account;
    .end local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_be
    :goto_be
    if-nez v4, :cond_c2

    if-eqz v5, :cond_c6

    .line 366
    :cond_c2
    invoke-direct {p0, v4, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 370
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_c6
    :goto_c6
    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_cb
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 374
    const-string v1, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_d6
    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 377
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 378
    return-void
.end method

.method public greylist-max-o onCancelButtonClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 289
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    .line 290
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 141
    const/4 v0, 0x2

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_25
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 149
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getLaunchedFromUid()I

    move-result v0

    iput v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 150
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 151
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 152
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 153
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "restrictions":Landroid/os/Bundle;
    nop

    .line 155
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    .line 159
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :cond_60
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    .line 162
    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    .line 163
    const-string v2, "descriptionTextOverride"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    .line 165
    if-eqz p1, :cond_cd

    .line 166
    const-string/jumbo v2, "pendingRequest"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 167
    nop

    .line 168
    const-string v2, "existingAccounts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 171
    nop

    .line 172
    const-string/jumbo v2, "selectedAccountName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 173
    nop

    .line 174
    const-string/jumbo v2, "selectedAddAccount"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 176
    nop

    .line 177
    const-string v2, "accountsList"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 178
    .local v2, "accounts":[Landroid/os/Parcelable;
    nop

    .line 179
    const-string/jumbo v3, "visibilityList"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 180
    .local v3, "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    .line 181
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b7
    array-length v5, v2

    if-ge v4, v5, :cond_cc

    .line 182
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    aget-object v6, v2, v4

    check-cast v6, Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 184
    .end local v2    # "accounts":[Landroid/os/Parcelable;
    .end local v3    # "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_cc
    goto :goto_ed

    .line 185
    :cond_cd
    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 189
    const-string/jumbo v2, "selectedAccount"

    const-class v3, Landroid/accounts/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 190
    .local v2, "selectedAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_e3

    .line 191
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 193
    :cond_e3
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    .line 196
    .end local v2    # "selectedAccount":Landroid/accounts/Account;
    :goto_ed
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    .line 197
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 198
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v5, v4, :cond_128

    .line 199
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    :cond_128
    goto :goto_104

    .line 203
    :cond_129
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_164

    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v2, :cond_164

    .line 204
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    .line 206
    const v2, 0x1090042

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 207
    const v2, 0x10202d5

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    .local v2, "view":Landroid/widget/TextView;
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    const-string v6, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iput-boolean v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    .line 216
    .end local v2    # "view":Landroid/widget/TextView;
    .end local v4    # "text":Ljava/lang/String;
    :cond_164
    iget-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    if-eqz v2, :cond_16c

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    return-void

    .line 225
    :cond_16c
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez v2, :cond_196

    .line 228
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_196

    .line 229
    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    .line 230
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_193

    .line 231
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    goto :goto_196

    .line 233
    :cond_193
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    .line 238
    :cond_196
    :goto_196
    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "listItems":[Ljava/lang/String;
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    invoke-direct {p0, v4, v5, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v4

    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const v4, 0x109005c

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 244
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    .line 248
    const v4, 0x102001a

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    .line 249
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    iget v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1cc

    move v1, v3

    :cond_1cc
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 254
    const/4 v0, 0x2

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    const-string v0, "ChooseTypeAndAccountActivity.onDestroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 258
    return-void
.end method

.method public greylist-max-o onOkButtonClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 293
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 295
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    goto :goto_20

    .line 296
    :cond_e
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 297
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    .line 299
    :cond_20
    :goto_20
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string/jumbo v0, "pendingRequest"

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 265
    const-string v0, "existingAccounts"

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 267
    :cond_17
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 268
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "selectedAddAccount"

    if-ne v0, v1, :cond_2e

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_44

    .line 271
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 272
    const-string/jumbo v1, "selectedAccountName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_44
    :goto_44
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 278
    .local v0, "accounts":[Landroid/os/Parcelable;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v1, "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 280
    .local v2, "i":I
    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 281
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    aput-object v6, v0, v2

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    move v2, v5

    goto :goto_62

    .line 284
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_83
    const-string v3, "accountsList"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 285
    const-string/jumbo v3, "visibilityList"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 286
    return-void
.end method

.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "accountManagerFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 398
    .local v0, "accountManagerResult":Landroid/os/Bundle;
    const-string/jumbo v1, "intent"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_38

    .line 401
    const/4 v2, 0x2

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 402
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v3

    iput-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 404
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x10000001

    and-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_37
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_37} :catch_5a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_3b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_37} :catch_39

    .line 406
    return-void

    .line 400
    .end local v0    # "accountManagerResult":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_38
    goto :goto_3c

    .line 413
    :catch_39
    move-exception v0

    goto :goto_3d

    .line 412
    :catch_3b
    move-exception v0

    .line 414
    :goto_3c
    nop

    .line 415
    :goto_3d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "errorMessage"

    const-string v2, "error communicating with server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 419
    return-void

    .line 408
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_5a
    move-exception v0

    .line 409
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 410
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 411
    return-void
.end method

.method protected greylist-max-o runAddAccountForAuthenticator(Ljava/lang/String;)V
    .registers 12
    .param p1, "type"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x2

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runAddAccountForAuthenticator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_20
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountOptions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 386
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountRequiredFeatures"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "requiredFeatures":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authTokenType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "authTokenType":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    move-object v3, p1

    .end local p1    # "type":Ljava/lang/String;
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 392
    return-void
.end method
