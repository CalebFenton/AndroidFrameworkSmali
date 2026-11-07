.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# static fields
.field public static final greylist-max-o EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public static synthetic blacklist $r8$lambda$DUE9HGR8cu_dO5VayMy3a3jWJuI(Landroid/accounts/CantAddAccountActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/accounts/CantAddAccountActivity;->lambda$onCreate$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0()Ljava/lang/String;
    .registers 2

    .line 44
    const v0, 0x10403ab

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o onCancelButtonClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    .line 50
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x1090042

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    .line 41
    const v0, 0x10202d5

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, "view":Landroid/widget/TextView;
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/accounts/CantAddAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/CantAddAccountActivity;)V

    const-string v3, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
